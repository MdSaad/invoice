<template>
    <aside
        :class="[
            'fixed mt-16 flex flex-col lg:mt-0 top-0 px-2 left-0 bg-white dark:bg-gray-900 dark:border-gray-800 text-gray-900 h-screen transition-all duration-300 ease-in-out z-99999 border-r border-gray-200',
            {
                'lg:w-[268px]': isExpanded || isMobileOpen || isHovered,
                'lg:w-[90px]': !isExpanded && !isHovered,
                'translate-x-0 w-[290px]': isMobileOpen,
                '-translate-x-full': !isMobileOpen,
                'lg:translate-x-0': true,
            },
        ]"
        @mouseenter="!isExpanded && (isHovered = true)"
        @mouseleave="isHovered = false"
    >
        <div
            class="flex mt-20 flex-col overflow-y-auto duration-300 ease-linear no-scrollbar"
        >
            <nav class="mb-6">
                <div class="flex flex-col gap-4">
                    <SideMenuTree :menus="globalStore.mainMenu" />
                </div>
            </nav>
            <!-- <SidebarWidget v-if="isExpanded || isHovered || isMobileOpen" />  -->
        </div>
    </aside>
</template>

<script setup>
import { useRoute } from "vue-router";
import { useSidebar } from "../../composables/useSidebar";
const { isExpanded, isMobileOpen, isHovered, openSubmenu, openSubSubmenu } =
    useSidebar();

import { useGlobalStore } from '@/scripts/admin/stores/global';

import SideMenuTree from './SideMenuTree.vue';
const globalStore = useGlobalStore()

const route = useRoute();

</script>
