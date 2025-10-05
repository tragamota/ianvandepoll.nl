<template>
  <header class="header">
    <div class="header-container">
      <div class="header-menu" @click="toggleMenu">
        <Transition name="fade" mode="out-in">
          <img
            v-if="!menuOpen"
            src="~/assets/images/menu-icon.svg"
            class="header-menu-icon"
            alt="Menu icon"
          >
          <img
            v-else
            src="~/assets/images/close-icon.svg"
            class="header-menu-icon"
            alt="Close icon"
          >
        </Transition>
      </div>

      <NuxtLink to="/" class="header-logo">
        <span>Van de Poll</span>
      </NuxtLink>

      <div class="header-content">
        <ul class="header-routes">
          <li class="header-route">
            <NuxtLink to="/">Home</NuxtLink>
          </li>
          <li class="header-route">
            <NuxtLink to="#about">About me</NuxtLink>
          </li>
          <li class="header-route">
            <NuxtLink to="#education">Education</NuxtLink>
          </li>
          <li class="header-route">
            <NuxtLink to="#experience">Experience</NuxtLink>
          </li>
        </ul>

        <div class="header-divider" />

        <ul class="header-extras">
          <li class="header-route">
            <NuxtLink to="/blog">Blog</NuxtLink>
          </li>
          <li class="header-route">
            <NuxtLink to="/contact">Contact</NuxtLink>
          </li>
        </ul>

        <ul class="header-socials">
          <li class="header-route">
            <a
              href="https://www.linkedin.com/in/ian-v-a64845158/"
              target="_blank"
            >
              <img
                class="header-icon"
                src="~/assets/images/linkedin-icon.png"
              >
            </a>
          </li>
          <li class="header-route">
            <a href="https://github.com/tragamota" target="_blank">
              <img class="header-icon" src="~/assets/images/github-icon.svg" >
            </a>
          </li>
        </ul>
      </div>
    </div>

    <div
      class="header-mobile-content"
      :class="{ 'header-mobile-content-open': menuOpen }"
    >
      <ul class="header-mobile-routes">
        <li class="header-mobile-route">
          <NuxtLink to="/">Home</NuxtLink>
        </li>
        <li class="header-mobile-route">
          <NuxtLink to="#about">About me</NuxtLink>
        </li>
        <li class="header-mobile-route">
          <NuxtLink to="#education">Education</NuxtLink>
        </li>
        <li class="header-mobile-route">
          <NuxtLink to="#experience">Experience</NuxtLink>
        </li>
      </ul>

      <div class="header-mobile-divider" />

      <ul class="header-mobile-extras">
        <li class="header-mobile-route">
          <NuxtLink to="/blog">Blog</NuxtLink>
        </li>
        <li class="header-mobile-route">
          <NuxtLink to="/contact">Contact</NuxtLink>
        </li>
      </ul>
    </div>
  </header>
</template>

<script setup lang="ts">
defineOptions({
  name: "HeaderComponent",
});

const menuOpen = ref(false);

const toggleMenu = () => {
  menuOpen.value = !menuOpen.value;
};
</script>

<style scoped lang="scss">
@import '~/assets/css/variables';

.header {
  display: block;
  position: sticky;
  top: 0;
  left: 0;
  right: 0;
  background-color: $color-bg-light; // light section background
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.15);
  z-index: 1000;
}

.header-container {
  display: flex;
  position: relative;
  align-items: center;
  flex-direction: row;
  width: 100%;
  height: 4.5rem;
}

.header-menu {
  display: block;
  visibility: hidden;
  position: relative;
  margin-left: 1rem;
  cursor: pointer;
}

.header-menu-icon {
  width: 38px;
  height: 38px;
}

.header-logo {
  display: block;
  position: relative;
  height: 100%;
  margin-left: 1rem;
  margin-right: 1.25rem;
  padding: 1.25rem 2.5rem;
  text-decoration: none;
  text-wrap: nowrap;
  background: $color-primary; // primary blue
}

.header-logo > span {
  text-transform: uppercase;
  font-size: 20pt;
  font-weight: bold;
  color: #ffffff;
}

.header-content {
  display: flex;
  position: relative;
  width: 100%;
  height: 100%;
  padding-left: 1rem;
  padding-right: 1rem;
  justify-content: flex-end;
  align-items: center;
}

.header-routes,
.header-extras,
.header-socials {
  list-style: none;
  margin: 0;
  padding: 0 0.5rem;
}

.header-socials {
  display: flex;
  height: 100%;
  align-items: center;
  padding-left: 1rem;
}

.header-route {
  display: inline-block;
  position: relative;
  margin-right: 0.7rem;

  > a {
    color: $color-primary; // primary blue for links
    text-decoration: none;
    text-transform: uppercase;
    font-weight: 500;
    font-size: 1.25rem;
    transition: color 0.3s;

    &:hover {
      color: $color-secondary; // energetic accent for hover
      text-decoration: underline;
    }

    &:active {
      color: darken($color-secondary, 10%);
      text-decoration: underline;
    }
  }
}

.header-icon {
  display: inline-block;
  width: 26px;
}

.header-divider {
  display: inline-block;
  height: 40%;
  border-left: 2px solid rgba($color-primary, 0.6); // subtle primary tone
  margin: 0 0.7rem;
}

.header-mobile-content {
  display: none;
  flex-direction: column;
  padding-left: 0;
  padding-right: 0;

  &.header-mobile-content-open {
    display: flex;
  }
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s, transform 0.3s;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
  transform: rotate(90deg);
}

.header-mobile-route {
  @extend .header-route;
  display: block;
  text-align: center;
  margin-right: 0;
  margin-bottom: 1rem;

  &:first-child { margin-top: 1rem; }
  &:last-child { margin-bottom: 0; }
}

.header-mobile-divider {
  display: none;
}

@media screen and (max-width: 768px) {
  .header-menu { visibility: visible; }
  .header-divider { display: none; }
  .header-routes, .header-extras { display: none; }
  .header-logo { margin-left: 1rem; padding: 1.25rem 1.5rem; }
}

@media screen and (max-width: 1200px) {
  .header-menu { visibility: visible; }
  .header-mobile-content-open { display: flex; }
}

</style>
