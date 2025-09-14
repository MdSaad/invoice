<script setup>
import { computed } from 'vue'

const props = defineProps({
  layout: {
    type: String,
    default: 'two-column',
  },
})

const formLayout = computed(() => {
  if (props.layout === 'one-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1'
  }else if (props.layout === 'two-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-2'
  }else if (props.layout === 'three-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-3 lg:grid-cols-3'
  }else if (props.layout === 'four-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-4'
  }else if (props.layout === 'five-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-5'
  }else if (props.layout === 'six-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-6'
  }else if (props.layout === 'seven-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-7'
  }else if (props.layout === 'eight-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-8'
  }else if (props.layout === 'nine-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-9'
  }else if (props.layout === 'ten-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-10'
  }else if (props.layout === 'eleven-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-11'
  }else if (props.layout === 'twelve-column') {
    return 'grid gap-y-6 gap-x-4 grid-cols-1 md:grid-cols-12'
  }
  // Default to single column layout if no valid layout is provided

  return 'grid gap-y-6 gap-x-4 grid-cols-1'
})
</script>

<template>
  <div :class="formLayout">
    <slot />
  </div>
</template>
