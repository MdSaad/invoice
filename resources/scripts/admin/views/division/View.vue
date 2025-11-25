<template>
  <BasePage class="xl:pl-96">
    <BasePageHeader :title="pageTitle">
      <BaseBreadcrumb>
        <BaseBreadcrumbItem :title="$t('general.home')" to="dashboard" />
        <BaseBreadcrumbItem
          :title="$t('menu.menu', 2)"
          to="/admin/menu"
        />
        <BaseBreadcrumb-item :title="pageTitle" to="#" active />
      </BaseBreadcrumb>

      <template #actions>
        <div class="flex items-center justify-end space-x-5">
          <BaseButton
            v-if="userStore.hasAbilities(abilities.EDIT_MENU)"
            @click="refreshData"
          >
            <template #left="slotProps">
              <BaseIcon name="ArrowPathIcon" :class="slotProps.class" />
            </template>
            {{ $t('general.refresh') }}
          </BaseButton>
        </div>
      </template>
    </BasePageHeader>
  </BasePage>
</template>

<script setup>
import { useMenuStore } from '@/scripts/admin/stores/menu'
import { useUserStore } from '@/scripts/admin/stores/user'
import abilities from '@/scripts/admin/stub/abilities'
import { useDialogStore } from '@/scripts/stores/dialog'
import { computed, inject, ref } from 'vue'
import { useI18n } from 'vue-i18n'
import { useRoute, useRouter } from 'vue-router'

const utils = inject('utils')
const dialogStore = useDialogStore()
const menuStore = useMenuStore()
const userStore = useUserStore()
const { t } = useI18n()

const router = useRouter()
const route = useRoute()
const menu = ref(null)

const pageTitle = computed(() => {
  return menuStore.selectedViewMenu.menu
    ? menuStore.selectedViewMenu.menu.name
    : ''
})

let isLoading = computed(() => {
  return menuStore.isFetchingViewData
})

function refreshData() {
  router.push('/admin/menu')
}
</script>
