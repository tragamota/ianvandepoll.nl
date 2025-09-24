<template>
  <header class="header">
    <div class="header-container">
      <div class="header-menu" @click="toggleMenu">
        <img
          v-if="!menuOpen"
          src="~/assets/images/menu-icon.svg"
          class="header-menu-icon"
          alt="Menu icon"
        />
        <img
          v-else
          src="~/assets/images/close-icon.svg"
          class="header-menu-icon"
          alt="Close icon"
        />
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
            <NuxtLink to="/about">About me</NuxtLink>
          </li>
          <li class="header-route">
            <NuxtLink to="/education">Education</NuxtLink>
          </li>
          <li class="header-route">
            <NuxtLink to="/experience">Experience</NuxtLink>
          </li>
        </ul>

        <div class="header-divider"></div>

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
              />
            </a>
          </li>
          <li class="header-route">
            <a href="https://github.com/tragamota" target="_blank">
              <img class="header-icon" src="~/assets/images/github-icon.svg" />
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
          <NuxtLink to="/about">About me</NuxtLink>
        </li>
        <li class="header-mobile-route">
          <NuxtLink to="/education">Education</NuxtLink>
        </li>
        <li class="header-mobile-route">
          <NuxtLink to="/experience">Experience</NuxtLink>
        </li>
      </ul>

      <div class="header-mobile-divider"></div>

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

<script lang="ts">
export default defineComponent({
  name: "Header",
  setup() {
    const menuOpen = ref(false);

    const toggleMenu = () => {
      menuOpen.value = !menuOpen.value;
    };

    return {
      menuOpen,
      toggleMenu,
    };
  },
});
</script>

<style scoped lang="scss">
.header {
  display: block;
  position: sticky;
  top: 0;
  left: 0;
  right: 0;
  background-color: #fff;
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
  display: none;
  position: relative;
  margin-left: 1rem;
  cursor: pointer;
}

.header-menu-icon {
  width: 38px;
  height: 38px;
  transition: transform 0.5s ease, opacity 0.5s ease;
}

.header-menu-icon-enter-active,
.header-menu-icon-leave-active {
  transition: transform 0.5s ease, opacity 0.5s ease;
}

.header-menu-icon-enter,
.header-menu-icon-leave-to {
  transform: rotate(90deg);
  opacity: 0;
}

.header-logo {
  display: block;
  position: relative;
  height: 100%;
  margin-left: 5rem;
  margin-right: 1.25rem;
  padding: 1.25rem 2.5rem;
  text-decoration: none;
  text-wrap: nowrap;
  background: #7393b3;
}

.header-logo > span {
  text-transform: uppercase;
  font-size: 20pt;
  font-weight: bold;
  color: #fff;
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

.header-routes {
  display: block;
  position: relative;
  padding: 0 0.5rem;
  margin: 0;
  list-style: none;
}

.header-extras {
  display: block;
  position: relative;
  padding: 0 0.5rem;
  margin: 0 1rem 0 0;
  list-style: none;
}

.header-socials {
  display: flex;
  position: relative;
  height: 100%;
  align-items: center;
  padding-left: 1rem;
}

.header-route {
  display: inline-block;
  position: relative;
  margin-right: 0.7rem;
}

.header-route > a {
  color: #7393b3;
  text-decoration: none;
  text-transform: uppercase;
  font-size: 1.2rem;
}

.header-route:last-child {
  margin-right: 0;
}

.header-route > a:active {
  color: #627d97;
  text-decoration: underline;
}

.header-route > a:hover {
  color: #627d97;
  text-decoration: underline;
}

.header-icon {
  display: inline-block;
  width: 26px;
}

.header-divider {
  display: inline-block;
  height: 40%;
  border-left: 2px solid #7393b39c;
  margin: 0 0.7rem 0 0.7rem;
}

.header-mobile-content {
  display: none;
  flex-direction: column;
  padding-left: 0;
  padding-right: 0;
}

.header-mobile-route {
  @extend .header-route
}

.header-mobile-extras {
  @extend .header-extras
}

@media screen and (max-width: 768px) {
  .header-menu {
    display: block;
  }

  .header-divider {
    display: none;
  }

  .header-routes {
    display: none;
  }

  .header-extras {
    display: none;
  }

  .header-logo {
    margin-left: 1rem;
    margin-right: 0;
    padding: 1.25rem 1.5rem;
  }

  .header-mobile-content-open {
    display: block;
  }
}

@media screen and (max-width: 1200px) {
  .header-menu {
    display: block;
  }

  .header-mobile-route {
    display: block;

    text-align: center;

    margin-right: 0;
    margin-bottom: 1rem;
  }

  .header-mobile-route:first-child {
    margin-top: 1rem;
  }

  .header-mobile-route:last-child {
    margin-bottom: 0;
  }

  .header-mobile-divider {
    display: none;
  }

  .header-divider {
    display: none;
  }

  .header-routes {
    display: none;
  }

  .header-logo {
    margin-left: 1rem;
    padding: 1.25rem 1.5rem;
  }

  .header-mobile-content-open {
    display: block;
  }
}
</style>
