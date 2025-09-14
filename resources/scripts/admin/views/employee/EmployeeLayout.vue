<template>
  <BasePage>
    <BasePageHeader :title="$t('hr.new_employee', 1)" class="mb-6">
      <BaseBreadcrumb>
        <BaseBreadcrumbItem :title="$t('general.home')" to="/admin/dashboard" />
        <BaseBreadcrumbItem
          :title="$t('hr.hr_management', 2)"
          to="/admin/settings/account-settings"
        />
        <BaseBreadcrumbItem
          :title="$t('hr.new_employee', 2)"
          to="/admin/settings/account-settings"
          active
        />
      </BaseBreadcrumb>
    </BasePageHeader>

    <div class="w-full mb-6 select-wrapper xl:hidden">
      <BaseMultiselect
        v-model="currentSetting"
        :options="dropdownMenuItems"
        :can-deselect="false"
        value-prop="title"
        track-by="title"
        label="title"
        object
        @update:modelValue="navigateToSetting"
      />
    </div>

    <div class="flex">
      <div class="hidden mt-1 xl:block min-w-[240px]">
        <BaseList>
          <BaseListItem
            v-for="(menuItem, index) in globalStore.settingMenu"
            :key="index"
            :title="$t(menuItem.title)"
            :to="menuItem.link"
            :active="hasActiveUrl(menuItem.link)"
            :index="index"
            class="py-3"
          >
            <template #icon>
              <BaseIcon :name="menuItem.icon"></BaseIcon>
            </template>
          </BaseListItem>
        </BaseList>
      </div>

      <div class="w-full overflow-hidden">
        <RouterView />
      </div>
    </div>
  </BasePage>
</template>

<script setup>
import { useGlobalStore } from '@/scripts/admin/stores/global'
import BaseList from '@/scripts/components/list/BaseList.vue'
import BaseListItem from '@/scripts/components/list/BaseListItem.vue'
import { computed, ref, watchEffect } from 'vue'
import { useI18n } from 'vue-i18n'
import { useRoute, useRouter } from 'vue-router'
const { t } = useI18n()

let currentSetting = ref({})

const globalStore = useGlobalStore()
const route = useRoute()
const router = useRouter()

const dropdownMenuItems = computed(() => {
  return globalStore.settingMenu.map((item) => {
    return Object.assign({}, item, {
      title: t(item.title),
    })
  })
})

watchEffect(() => {
  if (route.path === '/admin/settings') {
    router.push('/admin/settings/account-settings')
  }

  const item = dropdownMenuItems.value.find((item) => {
    return item.link === route.path
  })

  currentSetting.value = item
})

function hasActiveUrl(url) {
  return route.path.indexOf(url) > -1
}

function navigateToSetting(setting) {
  return router.push(setting.link)
}
</script>
