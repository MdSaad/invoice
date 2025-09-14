<template>
  <BasePage>
    New Employee
  </BasePage>
</template>

<script setup>
import { useGlobalStore } from '@/scripts/admin/stores/global'
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
