<template>
  <header
    class="
      fixed
      top-0
      left-0
      z-20
      flex
      items-center1111
      justify-between123
      w-full
      px-4
      py-3
      md:h-16 md:px-8
      bg-gradient-to-r
      from-primary-500
      to-primary-400
    "
  >
    <div class="lg:w-[268px] -translate-x-full lg:translate-x-0">
      <router-link
      to="/admin/dashboard"
      class="
        float-none
        text-lg
        not-italic
        font-black
        tracking-wider
        text-white
        brand-main
        md:float-left
        font-base
        hidden
        md:block
      "
    >
      <img v-if="adminLogo" :src="adminLogo" class="h-10" />
      <MainLogo v-else class="h-6" light-color="white" dark-color="white" />
    </router-link>
    </div>

    <!-- toggle button-->
    <div
      :class="{ 'is-active': globalStore.isSidebarOpen }"
      class="
        flex
        float-left
        p-1
        overflow-visible
        text-sm
        ease-linear
        bg-white
        border-0
        rounded
        cursor-pointer
        md:hidden md:ml-0
        hover:bg-gray-100
      "
      @click.prevent="onToggle"
    >
      <BaseIcon name="Bars3Icon" class="!w-6 !h-6 text-gray-500" />
    </div>
    <div class="flex w-full justify-left md:justify-start z-9999">
  <!--<nav class="px-4 py-2">
     <ul class="flex space-x-6">
      <li v-for="(item, index) in menu" :key="index" class="relative group">

        <a
          href="#"
          class="font-medium"
        >
          {{ item.title }}
        </a>
        <ul
          v-if="item.children"
          class="absolute left-0 top-full mt-2 bg-white border rounded shadow-md opacity-0 group-hover:opacity-100 invisible group-hover:visible transition duration-200 z-50"
        >
          <li
            v-for="(child, childIndex) in item.children"
            :key="childIndex"
            class="px-4 py-2 whitespace-nowrap hover:bg-gray-100"
          >
            <a href="#">{{ child.title }}</a>
          </li>
        </ul>
      </li>
    </ul>
  </nav>-->
  <nav class="px-4 py-2">
      <div class="flex space-x-6">
          <TopMenuTree :menus="globalStore.topMenu" />
      </div>
  </nav>
    </div>

    <ul class="flex float-right h-8 m-0 list-none md:h-9">
      <li
        v-if="hasCreateAbilities"
        class="relative hidden float-left m-0 md:block"
      >
        <BaseDropdown width-class="w-48">
          <template #activator>
            <div
              class="
                flex
                items-center
                justify-center
                w-8
                h-8
                ml-2
                text-sm text-black
                bg-white
                rounded
                md:h-9 md:w-9
              "
            >
              <BaseIcon name="PlusIcon" class="w-5 h-5 text-gray-600" />
            </div>
          </template>

          <router-link to="/admin/invoices/create">
            <BaseDropdownItem
              v-if="userStore.hasAbilities(abilities.CREATE_INVOICE)"
            >
              <BaseIcon
                name="DocumentTextIcon"
                class="w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"
                aria-hidden="true"
              />
              {{ $t('invoices.new_invoice') }}
            </BaseDropdownItem>
          </router-link>
          <router-link to="/admin/estimates/create">
            <BaseDropdownItem
              v-if="userStore.hasAbilities(abilities.CREATE_ESTIMATE)"
            >
              <BaseIcon
                name="DocumentIcon"
                class="w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"
                aria-hidden="true"
              />
              {{ $t('estimates.new_estimate') }}
            </BaseDropdownItem>
          </router-link>

          <router-link to="/admin/customers/create">
            <BaseDropdownItem
              v-if="userStore.hasAbilities(abilities.CREATE_CUSTOMER)"
            >
              <BaseIcon
                name="UserIcon"
                class="w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"
                aria-hidden="true"
              />
              {{ $t('customers.new_customer') }}
            </BaseDropdownItem>
          </router-link>
        </BaseDropdown>
      </li>

      <li class="ml-2">
        <GlobalSearchBar
          v-if="
            userStore.currentUser.is_owner ||
            userStore.hasAbilities(abilities.VIEW_CUSTOMER)
          "
        />
      </li>

      <li>
        <CompanySwitcher />
      </li>

      <!-- User Dropdown-->
      <li class="relative block float-left ml-2">
        <BaseDropdown width-class="w-48">
          <template #activator>
            <img
              :src="previewAvatar"
              class="block w-8 h-8 rounded md:h-9 md:w-9 object-cover"
            />
          </template>

          <router-link to="/admin/settings/account-settings">
            <BaseDropdownItem>
              <BaseIcon
                name="CogIcon"
                class="w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"
                aria-hidden="true"
              />
              {{ $t('navigation.settings') }}
            </BaseDropdownItem>
          </router-link>

          <BaseDropdownItem @click="logout">
            <BaseIcon
              name="ArrowRightOnRectangleIcon"
              class="w-5 h-5 mr-3 text-gray-400 group-hover:text-gray-500"
              aria-hidden="true"
            />
            {{ $t('navigation.logout') }}
          </BaseDropdownItem>
        </BaseDropdown>
      </li>
    </ul>
  </header>
</template>

<script setup>
import { useAuthStore } from '@/scripts/admin/stores/auth'
import { useGlobalStore } from '@/scripts/admin/stores/global'
import { useUserStore } from '@/scripts/admin/stores/user'
import { computed } from 'vue'
import { useRouter } from 'vue-router'

import CompanySwitcher from '@/scripts/components/CompanySwitcher.vue'
import GlobalSearchBar from '@/scripts/components/GlobalSearchBar.vue'
import MainLogo from '@/scripts/components/icons/MainLogo.vue'

import abilities from '@/scripts/admin/stub/abilities'
import TopMenuTree from './TopMenuTree.vue'

const authStore = useAuthStore()
const userStore = useUserStore()
const globalStore = useGlobalStore()
const router = useRouter()

const previewAvatar = computed(() => {
  return userStore.currentUser && userStore.currentUser.avatar !== 0
    ? userStore.currentUser.avatar
    : getDefaultAvatar()
})

const adminLogo = computed(() => {
  if (globalStore.globalSettings.admin_portal_logo) {
    return '/storage/' + globalStore.globalSettings.admin_portal_logo
  }

  return false
})

function getDefaultAvatar() {
  const imgUrl = new URL('$images/default-avatar.jpg', import.meta.url)
  return imgUrl
}

function hasCreateAbilities() {
  return userStore.hasAbilities([
    abilities.CREATE_INVOICE,
    abilities.CREATE_ESTIMATE,
    abilities.CREATE_CUSTOMER,
  ])
}

async function logout() {
  await authStore.logout()
  router.push('/login')
}

function onToggle() {
  globalStore.setSidebarVisibility(true)
}

const menu = [
  { title: 'Home' },
  {
    title: 'Services',
    children: [
      { title: 'Web Development' },
      { title: 'Mobile Development' },
      { title: 'UI/UX Design' },
    ],
  },
  {
    title: 'About',
    children: [
      { title: 'Company' },
      { title: 'Team' },
    ],
  },
  { title: 'Contact' },
]
</script>
