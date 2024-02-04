import type { NuxtLink } from '#build/components';
<template>
  <header class="header">
    <div class="header-container">
      <NuxtLink to="/" class="header-logo">
        <span>Van de Poll</span>  
      </NuxtLink> 

      <div class="header-routes">
        <ul>
          <NuxtLink to="/"> Home </NuxtLink>
        </ul>
      </div>
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
  min-height: 3rem;
}

.header-logo {
  display: block;
  position: relative;

  height: 100%;
  
  margin-left: 10%;
  padding: 1rem 2rem 1rem 2rem;

  text-decoration: none;

  background: #8b8b8b;
}

.header-logo > span {
  text-transform: uppercase;

  font-size: 20pt;
  font-weight: bold;

  color: #fff;
}

.header-routes {
  display: block;
  position: relative;


}
</style>
