import type { NuxtLink } from '#build/components';
<template>
  <header class="header">
    <div class="header-container">
      <div class="header-menu">
        <img class="header-menu-icon" src="~/assets/images/menu-icon.svg">
      </div>

      <NuxtLink to="/" class="header-logo">
        <span>Van de Poll</span>
      </NuxtLink>

      <div class="header-routes">
        <ul class="header-list">
          <li class="header-item">
            <NuxtLink to="/">Home</NuxtLink>
          </li>
          <li class="header-item">
            <NuxtLink to="/about">About me</NuxtLink>
          </li>
          <li class="header-item">
            <NuxtLink to="/education">Education</NuxtLink>
          </li>
          <li class="header-item">
            <NuxtLink to="/experience">Experience</NuxtLink>
          </li>
        </ul>

        <div class="header-divider"></div>

        <ul class="header-list">
          <li class="header-item">
            <NuxtLink to="/blog">Blog</NuxtLink>
          </li>
          <li class="header-item">
            <NuxtLink to="/contact">Contact</NuxtLink>
          </li>
        </ul>
      </div>

      <ul class="header-socials">
        <li class="header-item">
          <a
            href="https://www.linkedin.com/in/ian-v-a64845158/"
            target="_blank"
          >
            <img class="header-icon" src="~/assets/images/linkedin-icon.png" />
          </a>
        </li>
        <li class="header-item">
          <a href="https://github.com/tragamota" target="_blank">
            <img class="header-icon" src="~/assets/images/github-icon.svg" />
          </a>
        </li>
      </ul>
    </div>
  </header>
</template>

<style scoped lang="scss">
.header {
  display: block;
  position: sticky;

  top: 0;
  left: 0;
  right: 0;

  background-color: #fff;

  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.15);
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
  position: relative;

  margin-left: 1rem;
}

.header-menu-icon {
  display: none;
  position: relative;

  visibility: collapse;

  width: 38px;

  color:#627d97;
}

.header-logo {
  display: block;
  position: relative;

  height: 100%;

  margin-left: 10%;
  margin-right: 2rem;
  padding: 1.25rem 2.5rem 1.25rem 2.5rem;

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

.header-routes {
  display: flex;
  position: relative;

  width: 100%;
  height: 100%;
  padding-left: 1rem;
  padding-right: 1.5rem;

  justify-content: flex-end;
  align-items: center;
}

.header-socials {
  display: flex;
  position: relative;

  height: 100%;

  align-items: center;

  padding: 0;
}

.header-list {
  display: block;
  position: relative;

  padding: 0 0.5rem 0 0.5rem;
  margin: 0;

  list-style: none;
}

.header-item {
  display: inline-block;
  position: relative;

  margin-right: 1rem;
}

.header-item > a {
  color: #7393b3;

  text-decoration: none;
  text-transform: uppercase;

  font-size: 1.25rem;
}

.header-item > a:active {
  color: #627d97;

  text-decoration: underline;
}

.header-item > a:hover {
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

  margin: 0 1rem 0 0.5rem;
}

@media screen and (min-width: 1400px) {

}
</style>
