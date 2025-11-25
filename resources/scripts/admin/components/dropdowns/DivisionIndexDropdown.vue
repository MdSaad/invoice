<template>
  <BaseDropdown :content-loading="divisionStore.isFetchingViewData">
    <template #activator>
      <BaseButton v-if="route.name === 'division.view'" variant="primary">
        <BaseIcon name="EllipsisHorizontalIcon" class="h-5 text-white" />
      </BaseButton>
      <BaseIcon v-else name="EllipsisHorizontalIcon" class="h-5 text-gray-500" />
    </template>

    <!-- Edit Division  -->
    <router-link
      v-if="userStore.hasAbilities(abilities.EDIT_MENU)"
      :to="`/admin/global_settings/region_area_settings/division/${row.id}/edit`"
    >
      <BaseDropdownItem>
        <BaseIcon
          name="PencilIcon"
          class="w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"
        />
        {{ $t('general.edit') }}
      </BaseDropdownItem>
    </router-link>

    <!-- View Division -->
    <router-link
      v-if="
        route.name !== 'division.view' &&
        userStore.hasAbilities(abilities.VIEW_MENU)
      "
      :to="`/admin/global_settings/region_area_settings/division/${row.id}/view`"
    >
      <BaseDropdownItem>
        <BaseIcon
          name="EyeIcon"
          class="w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"
        />
        {{ $t('general.view') }}
      </BaseDropdownItem>
    </router-link>

    <!-- Delete Division  -->
    <BaseDropdownItem
      v-if="userStore.hasAbilities(abilities.DELETE_MENU)"
      @click="removeDivision(row.id)"
    >
      <BaseIcon
        name="TrashIcon"
        class="w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"
      />
      {{ $t('general.delete') }}
    </BaseDropdownItem>
  </BaseDropdown>
</template>

<script setup>
import { useDivisionStore } from '@/scripts/admin/stores/division'
import { useUserStore } from '@/scripts/admin/stores/user'
import abilities from '@/scripts/admin/stub/abilities'
import { useDialogStore } from '@/scripts/stores/dialog'
import { useNotificationStore } from '@/scripts/stores/notification'
import { inject } from 'vue'
import { useI18n } from 'vue-i18n'
import { useRoute, useRouter } from 'vue-router'

const props = defineProps({
  row: {
    type: Object,
    default: null,
  },
  table: {
    type: Object,
    default: null,
  },
  filters: {
    type: Object,
    default: () => ({}),
  },
  loadData: {
    type: Function,
    default: () => {},
  },
})

const divisionStore = useDivisionStore()
const notificationStore = useNotificationStore()
const dialogStore = useDialogStore()
const userStore = useUserStore()

const { t } = useI18n()
const route = useRoute()
const router = useRouter()
const utils = inject('utils')

function removeDivision(id) {
  dialogStore
    .openDialog({
      title: t('general.are_you_sure'),
      message: t('division.confirm_delete', 1),
      yesLabel: t('general.ok'),
      noLabel: t('general.cancel'),
      variant: 'danger',
      hideNoButton: false,
      size: 'lg',
    })
    .then((res) => {
      if (res) {
        divisionStore.deleteDivision({ ids: [id] }).then((response) => {
          if (response.data.success) {
            props.loadData && props.loadData()
            return true
          }
        })
      }
    })
}
  function goToNextLayer() {
      Object.assign(props.filters, {
        // Reset other filters if needed
        parent_id: props.row.id,
        en: '',
        orderByField: 'order_no',
        orderBy: 'asc',
        page: 1, // Reset to the first page
      })
     // props.loadData && props.loadData()
  }
</script>
