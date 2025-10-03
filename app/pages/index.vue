<template>
  <Hero :scroll-y="scrollY"/>
</template>

<script setup lang="ts">
import { onMounted, ref } from "vue";

const scrollY = ref(0);
const handleScroll = () => {
  scrollY.value = window.scrollY;
};

onMounted(() => {
  window.addEventListener("scroll", handleScroll);
});

onBeforeUnmount(() => {
  window.removeEventListener("scroll", handleScroll);
});
</script>
