<template>
  <ul class="space-y-1">
    <li v-for="(item, index) in menus" :key="item.id">
      <div class="flex items-center gap-4 font-normal text-gray-700">
        <button
          @click="toggleSubmenu(index)"
          class="menu-item flex w-full"
          :class="{
            'menu-item-active': isSubmenuOpen(index),
            'menu-item-inactive': !isSubmenuOpen(index),
          }"
        >
          <span :class="isSubmenuOpen(index) ? 'menu-item-icon-active' : 'menu-item-icon-inactive'">
            <!-- <component :is="item.icon" /> -->
            <BaseIcon :name="item.icon" class="w-5 h-5" />
          </span>

          <router-link
            v-if="item.path"
            :to="item.path"
            class="flex items-center gap-2"
            :class="{
              'menu-item-active': isActive(item.path),
              'menu-item-inactive': !isActive(item.path),
            }"
          >
            <span>{{ item.en }}</span>
          </router-link>

          <span
            v-else
            class="menu-item-text"
          >{{ item.en }}</span>

          <ChevronDownIcon
            v-if="item.children_recursive?.length"
            :class="[
              'ml-auto w-5 h-5 transition-transform duration-200',
              { 'rotate-180 text-brand-500': isSubmenuOpen(index) }
            ]"
          />
        </button>
      </div>

      <!-- Recursive Submenu -->
      <transition name="fade">
        <SideMenuTree
          v-if="item.children_recursive?.length && isSubmenuOpen(index)"
          :menus="item.children_recursive"
          class="ml-4 pl-0 border-gray-300 mt-1"
        />
      </transition>
    </li>
  </ul>
</template>

<script setup>
import { ref } from 'vue';
import { useRoute } from 'vue-router';
import { ChevronDownIcon } from '../../../icons'; // adjust if needed
import SideMenuTree from './SideMenuTree.vue'; // self-reference for recursion

// Props
defineProps({
  menus: {
    type: Array,
    required: true,
  },
});

// Route + local submenu toggle
const route = useRoute();
const openIndex = ref(null); // local to this instance

// Methods
function toggleSubmenu(index) {
  openIndex.value = openIndex.value === index ? null : index;
}

function isSubmenuOpen(index) {
  return openIndex.value === index;
}

function isActive(path) {
  return route.path === path;
}
</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: all 0.3s ease;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
  transform: translateY(-4px);
}
</style>
