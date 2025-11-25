<template>
  <BasePage>
    <!-- Page Header Section -->
    <BasePageHeader :title="$t('division.title')">
      <BaseBreadcrumb>
        <BaseBreadcrumbItem :title="$t('general.home')" to="dashboard" />
        <BaseBreadcrumbItem
          :title="$t('division.division', 2)"
          to="#"
          active
        />
      </BaseBreadcrumb>

      <template #actions>
        <div class="flex items-center justify-end space-x-5">
          <BaseButton
            v-show="divisionStore.totalDivision"
            variant="primary-outline"
            @click="toggleFilter"
          >
            {{ $t('general.filter') }}
            <template #right="slotProps">
              <BaseIcon
                v-if="!showFilters"
                name="FunnelIcon"
                :class="slotProps.class"
              />
              <BaseIcon v-else name="XMarkIcon" :class="slotProps.class" />
            </template>
          </BaseButton>
 <!-- @click="$router.push('division/create')" -->
          <BaseButton
            v-if="userStore.hasAbilities(abilities.CREATE_MENU)"
            @click="openCreateDivision"
          >
            <template #left="slotProps">
              <BaseIcon name="PlusIcon" :class="slotProps.class" />
            </template>
            {{ $t('division.new_division') }}
          </BaseButton>
        </div>
      </template>
    </BasePageHeader>

    <BaseFilterWrapper :show="showFilters" class="mt-5" @clear="clearFilter">
      <BaseInputGroup :label="$t('division.division_en_name')" class="text-left">
        <BaseInput
          v-model="filters.division_en_name"
          type="text"
          name="division_en_name"
          autocomplete="off"
        />
      </BaseInputGroup>
    </BaseFilterWrapper>

    <BaseEmptyPlaceholder
      v-show="showEmptyScreen"
      :title="$t('division.no_division')"
      :description="$t('division.list_of_division')"
    >
      <AstronautIcon class="mt-5 mb-4" />
      <template #actions>
        <BaseButton id="btnAdd"
          v-if="userStore.hasAbilities(abilities.CREATE_MENU)"
          variant="primary-outline"
          @click="$router.push('/admin/global_settings/region_area_settings/division/create')"
        >
          <template #left="slotProps">
            <BaseIcon name="PlusIcon" :class="slotProps.class" />
          </template>
          {{ $t('division.add_new_division') }}
        </BaseButton>
      </template>
    </BaseEmptyPlaceholder>

    <!-- Total no of division in Table -->
    <div v-show="!showEmptyScreen" class="relative table-container">
      <div class="relative flex items-center justify-end h-5">
        <BaseDropdown v-if="divisionStore.selectedDivision.length">
          <template #activator>
            <span
              class="
                flex
                text-sm
                font-medium
                cursor-pointer
                select-none
                text-primary-400
              "
            >
              {{ $t('general.actions') }}

              <BaseIcon name="ChevronDownIcon" />
            </span>
          </template>
          <BaseDropdownItem @click="removeMultipledivision">
            <BaseIcon name="TrashIcon" class="mr-3 text-gray-600" />
            {{ $t('general.delete') }}
          </BaseDropdownItem>
        </BaseDropdown>
      </div>

      <!-- Table Section -->
      <BaseTable
        ref="tableComponent"
        class="mt-3"
        :data="fetchData"
        :columns="divisionColumns"
      >
        <!-- Select All Checkbox -->
        <template #header>
          <div class="absolute z-10 items-center left-6 top-2.5 select-none">
            <BaseCheckbox
              v-model="selectAllFieldStatus"
              variant="primary"
              @change="divisionStore.selectAllDivision"
            />
          </div>
        </template>

        <template #cell-status="{ row }">
          <div class="relative block">
            <BaseCheckbox
              :id="row.data.id"
              v-model="selectField"
              :value="row.data.id"
              variant="primary"
            />
          </div>
        </template>

        <template #cell-name="{ row }">
          <router-link :to="{ path: `division/${row.data.id}/view` }">
            <BaseText
              :text="row.data.name"
              tag="span"
              class="font-medium text-primary-500 flex flex-col"
            />
            <BaseText
              :text="row.data.order_no ? row.data.order_no : ''"
              tag="span"
              class="text-xs text-gray-400"
            />
          </router-link>
        </template>

        <template #cell-icon="{ row }">
          <span>
            {{ row.data.icon ? row.data.icon : '-' }}
          </span>
        </template>

        <template v-if="hasAtleastOneAbility()" #cell-actions="{ row }">
          <divisionDropdown
            :row="row.data"
            :table="tableComponent"
            :load-data="refreshTable"
            :filters="filters"
          />
        </template>
      </BaseTable>
    </div>
  </BasePage>
</template>

<script setup>
import { useDivisionStore } from '@/scripts/admin/stores/division'
import { useUserStore } from '@/scripts/admin/stores/user'
import { useDialogStore } from '@/scripts/stores/dialog'
import { debouncedWatch } from '@vueuse/core'
import moment from 'moment'
import { computed, onUnmounted, reactive, ref, watch } from 'vue'
import { useI18n } from 'vue-i18n'
import { useRoute } from 'vue-router'
const route = useRoute()


import abilities from '@/scripts/admin/stub/abilities'

import divisionDropdown from '@/scripts/admin/components/dropdowns/divisionIndexDropdown.vue'
import AstronautIcon from '@/scripts/components/icons/empty/AstronautIcon.vue'

const dialogStore = useDialogStore()
const divisionStore = useDivisionStore()
const userStore = useUserStore()

let tableComponent = ref(null)
let showFilters = ref(false)
let isFetchingInitialData = ref(true)
const { t } = useI18n()

let filters = reactive({
  division_en_name: ''
})
let filtersData = [];

const showEmptyScreen = computed(
  () => !divisionStore.totalDivision && !isFetchingInitialData.value
)

const selectField = computed({
  get: () => divisionStore.selectedDivision,
  set: (value) => {
    return divisionStore.selectDivision(value)
  },
})

const selectAllFieldStatus = computed({
  get: () => divisionStore.selectAllField,
  set: (value) => {
    return divisionStore.setSelectAllState(value)
  },
})

const divisionColumns = computed(() => {
  return [
    {
      key: 'status',
      thClass: 'extra w-10 pr-0',
      sortable: false,
      tdClass: 'font-medium pr-0',
    },
    {
      key: 'order_no',
      label: t('division.order_no'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    {
      key: 'division_en_name',
      label: t('division.division_en_name'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    {
      key: 'division_bn_name',
      label: t('division.division_bn_name'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    {
      key: 'division_short_name',
      label: t('division.division_short_name'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    { 
      key: 'url', 
      label: t('division.url'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    {
      key: 'actions',
      label: t('general.actions'),
      tdClass: 'text-right text-sm font-medium pl-0',
      thClass: 'pl-0',
      sortable: false,
    },
  ]
})

debouncedWatch(
  filters,
  () => {
    setFilters()
  },
  { debounce: 500 }
)

onUnmounted(() => {
  if (divisionStore.selectAllField) {
    divisionStore.selectAlldivision()
  }
})

function refreshTable() {
  tableComponent.value.refresh()
}

function setFilters() {
  refreshTable()
}
function hasAtleastOneAbility() {
  return userStore.hasAbilities([
    abilities.DELETE_MENU,
    abilities.EDIT_MENU,
    abilities.VIEW_MENU,
  ])
}

async function fetchData(page, filter,sort) {
  let data = {
    division_en_name: filters.division_en_name,
    orderByField: 'order_no',
    orderBy: 'asc',
    page:filters.page || 1,
  }

  isFetchingInitialData.value = true
  let response = await divisionStore.fetchDivision(data)
  isFetchingInitialData.value = false
  return {
    data: response.data.data,
    pagination: {
      totalPages: response.data.meta.last_page,
      currentPage: page,
      totalCount: response.data.meta.total,
      limit: 10,
    },
  }
}

function clearFilter() {
  filters.division_en_name = ''
}

function toggleFilter() {
  if (showFilters.value) {
    clearFilter()
  }

  showFilters.value = !showFilters.value
}

let date = ref(new Date())

date.value = moment(date).format('YYYY-MM-DD')

function removeMultipledivision() {
  dialogStore
    .openDialog({
      title: t('general.are_you_sure'),
      message: t('division.confirm_delete', 2),
      yesLabel: t('general.ok'),
      noLabel: t('general.cancel'),
      variant: 'danger',
      hideNoButton: false,
      size: 'lg',
    })
    .then((res) => {
      if (res) {
        divisionStore.deleteMultipleDivision().then((response) => {
          if (response.data) {
            refreshTable()
          }
        })
      }
    })
}
const openCreateDivision = () => {
  router.push({ path: '/global_settings/region_area_settings'})
}
</script>
