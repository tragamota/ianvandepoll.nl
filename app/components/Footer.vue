<template>
  <footer class="footer">
    <div class="footer-container">
      <p>Copyright 2025 © - Ian van de Poll</p>
    </div>
  </footer>
</template>

<script setup lang="ts">
defineOptions({
  name: "FooterComponent"
})
</script>

<style scoped lang="scss">
@import '~/assets/css/variables.scss';

.footer {
  display: block;
  position: relative;

  height: 3rem;

  box-shadow: 0px -4px 8px 0px rgba(0, 0, 0, 0.15);
  background: $color-primary;

  z-index: 1000;
}

.footer-container {
  display: flex;
  position: relative;

  height: 100%;
  margin-left: 3rem;

  font-size: 0.85rem;

  align-items: center;
}
</style>
