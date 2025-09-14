<template>
  <BasePage>
    <!-- Page Header Section -->
    <BasePageHeader :title="$t('menu.title')">
      <BaseBreadcrumb>
        <BaseBreadcrumbItem :title="$t('general.home')" to="dashboard" />
        <BaseBreadcrumbItem
          :title="$t('menu.menu', 2)"
          to="#"
          active
        />
      </BaseBreadcrumb>

      <template #actions>
        <div class="flex items-center justify-end space-x-5">
          <BaseButton
            v-show="menuStore.totalMenu"
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

          <BaseButton
            v-if="userStore.hasAbilities(abilities.CREATE_MENU)"
            @click="$router.push('menu/create')"
          >
            <template #left="slotProps">
              <BaseIcon name="PlusIcon" :class="slotProps.class" />
            </template>
            {{ $t('menu.new_menu') }}
          </BaseButton>
           <BaseButton
            v-if="filters.parent_id"
            @click="goBackToParent"
          >
            <template #left="slotProps">
              <BaseIcon name="BackwardIcon" :class="slotProps.class" />
            </template>
            {{ $t('general.go_back') }}
          </BaseButton> 
          <BaseButton
            v-if="filters.parent_id"
            @click="goHome"
          >
            <template #left="slotProps">
              <BaseIcon name="HomeIcon" :class="slotProps.class" />
            </template>
            {{ $t('general.go_home') }}
          </BaseButton>
        </div>
      </template>
    </BasePageHeader>

    <BaseFilterWrapper :show="showFilters" class="mt-5" @clear="clearFilter">
      <BaseInputGroup :label="$t('menu.en')" class="text-left">
        <BaseInput
          v-model="filters.en"
          type="text"
          name="en"
          autocomplete="off"
        />
      </BaseInputGroup>
    </BaseFilterWrapper>

    <BaseEmptyPlaceholder
      v-show="showEmptyScreen"
      :title="$t('menu.no_menu')"
      :description="$t('menu.list_of_menu')"
    >
      <AstronautIcon class="mt-5 mb-4" />

      <template #actions>
        <BaseButton
          v-if="userStore.hasAbilities(abilities.CREATE_MENU)"
          variant="primary-outline"
          @click="$router.push('/admin/menu/create')"
        >
          <template #left="slotProps">
            <BaseIcon name="PlusIcon" :class="slotProps.class" />
          </template>
          {{ $t('menu.add_new_menu') }}
        </BaseButton>
      </template>
    </BaseEmptyPlaceholder>

    <!-- Total no of menu in Table -->
    <div v-show="!showEmptyScreen" class="relative table-container">
      <div class="relative flex items-center justify-end h-5">
        <BaseDropdown v-if="menuStore.selectedMenu.length">
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
          <BaseDropdownItem @click="removeMultiplemenu">
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
        :columns="menuColumns"
      >
        <!-- Select All Checkbox -->
        <template #header>
          <div class="absolute z-10 items-center left-6 top-2.5 select-none">
            <BaseCheckbox
              v-model="selectAllFieldStatus"
              variant="primary"
              @change="menuStore.selectAllMenu"
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
          <router-link :to="{ path: `menu/${row.data.id}/view` }">
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
          <menuDropdown
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
import { useCompanyStore } from '@/scripts/admin/stores/company'
import { useMenuStore } from '@/scripts/admin/stores/menu'
import { useUserStore } from '@/scripts/admin/stores/user'
import { useDialogStore } from '@/scripts/stores/dialog'
import { debouncedWatch } from '@vueuse/core'
import moment from 'moment'
import { computed, onUnmounted, reactive, ref } from 'vue'
import { useI18n } from 'vue-i18n'
import { useRoute } from 'vue-router'
const route = useRoute()


import abilities from '@/scripts/admin/stub/abilities'

import menuDropdown from '@/scripts/admin/components/dropdowns/menuIndexDropdown.vue'
import AstronautIcon from '@/scripts/components/icons/empty/AstronautIcon.vue'

const companyStore = useCompanyStore()
const dialogStore = useDialogStore()
const menuStore = useMenuStore()
const userStore = useUserStore()

let tableComponent = ref(null)
let showFilters = ref(false)
let isFetchingInitialData = ref(true)
const { t } = useI18n()

let filters = reactive({
  parent_id:'',
  en: ''
})
let filtersData = [];

const showEmptyScreen = computed(
  () => !menuStore.totalMenu && !isFetchingInitialData.value
)

const selectField = computed({
  get: () => menuStore.selectedMenu,
  set: (value) => {
    return menuStore.selectMenu(value)
  },
})

const selectAllFieldStatus = computed({
  get: () => menuStore.selectAllField,
  set: (value) => {
    return menuStore.setSelectAllState(value)
  },
})

const menuColumns = computed(() => {
  return [
    {
      key: 'status',
      thClass: 'extra w-10 pr-0',
      sortable: false,
      tdClass: 'font-medium pr-0',
    },
    {
      key: 'en',
      label: t('menu.en'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    {
      key: 'bn',
      label: t('menu.bn'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    {
      key: 'path',
      label: t('menu.path'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    {
      key: 'order_no',
      label: t('menu.order_no'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    { 
      key: 'icon', 
      label: t('menu.icon'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    { 
      key: 'location', 
      label: t('menu.location'),
      thClass: 'extra',
      tdClass: 'font-medium',
    },
    { 
      key: 'menu_status', 
      label: t('menu.menu_status'),
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
  if (menuStore.selectAllField) {
    menuStore.selectAllmenu()
  }
})

function refreshTable() {
  tableComponent.value.refresh()
}

function setFilters() {
  refreshTable()
}
function goBackToParent() {
 // router.go(-1)
 /* if (window.history.length > 1) {
    router.back()
  } else {
    router.push('/admin/menu') // fallback route
  } */
  /*let obj1 = filtersData.pop();
  let obj2 = filtersData.pop();
  Object.assign(filters, {
    // Reset other filters if needed
    parent_id: obj2?.parent_id || '',
    en: obj2?.en || '',
    orderByField: obj2?.orderByField || 'order_no',
    orderBy: obj2?.orderBy || 'asc',
    page: obj2?.page || 1, // Reset to the first page
  })
  //console.log(filters);
  //refreshTable();*/
  const previousRoute = sessionStorage.getItem('previousRoute');
    if (previousRoute) {
    router.push(previousRoute)
  } else {
    router.push('/admin/menu')
  }
}
function goHome() {
  filters.parent_id = ''
  filters.en = ''
  filters.orderByField = 'order_no'
  filters.orderBy = 'asc'
  filters.page = 1 // Reset to the first page
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
  filtersData.push(filters);
  let data = {
    parent_id: filters.parent_id, 
    en: filters.en,
    orderByField: 'order_no',
    orderBy: 'asc',
    page:filters.page || 1,
  }

  isFetchingInitialData.value = true
  let response = await menuStore.fetchMenu(data)
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
  filters.en = ''
}

function toggleFilter() {
  if (showFilters.value) {
    clearFilter()
  }

  showFilters.value = !showFilters.value
}

let date = ref(new Date())

date.value = moment(date).format('YYYY-MM-DD')

function removeMultiplemenu() {
  dialogStore
    .openDialog({
      title: t('general.are_you_sure'),
      message: t('menu.confirm_delete', 2),
      yesLabel: t('general.ok'),
      noLabel: t('general.cancel'),
      variant: 'danger',
      hideNoButton: false,
      size: 'lg',
    })
    .then((res) => {
      if (res) {
        menuStore.deleteMultiplemenu().then((response) => {
          if (response.data) {
            refreshTable()
          }
        })
      }
    })
}
</script>
