<template>
  <section class="hero">
    <div class="hero-text">
      <h1>Ian van de Poll</h1>
      <h2>Software & ML Engineer</h2>
      <p>Building robust AI systems, adversarial detection, and scalable backend solutions.</p>
      <div class="hero-actions">
        <NuxtLink to="#portfolio" class="btn">Portfolio</NuxtLink>
        <NuxtLink to="#cv" class="btn secondary">CV</NuxtLink>
      </div>
    </div>

    <div class="hero-image" :style="transformStyle">
      <img src="~/assets/images/portrait-min.png" alt="Portrait of Ian van de Poll" >
      <div class="background-gradient" />
    </div>
  </section>
</template>

<script setup lang="ts">
import { computed } from "vue";

defineOptions({
  name: "HeroComponent"
})

const props = defineProps<{
  scrollY: number
}>();

const transformStyle = computed(() => ({
  transform: `translateY(${props.scrollY * 0.8}px)`
}));
</script>

<style scoped lang="scss">
.hero {
  position: relative;
  height: 60vh;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 5vw;
  overflow: hidden;

  .hero-text {
    max-width: 45%;
    z-index: 10;

    h1 {
      font-size: 5rem;
      color: #4271a0;
      font-weight: bold;
    }

    h2 {
      font-size: 2rem;
      color: #4271a0;
      margin: 1rem 0;
    }

    p {
      font-size: 1.25rem;
      margin-bottom: 2rem;
      color: #1a2f42;
    }

    .hero-actions {
      display: flex;
      gap: 1rem;

      .btn {
        padding: 0.75rem 1.5rem;
        border-radius: 8px;
        text-decoration: none;
        font-weight: bold;
        transition: all 0.3s ease;

        &.secondary {
          background: transparent;
          border: 2px solid #4271a0;
          color: #4271a0;

          &:hover {
            background: #4271a0;
            color: white;
          }
        }

        &:not(.secondary) {
          background: #04b0ca;
          color: white;

          &:hover {
            background: #0077be;
          }
        }
      }
    }
  }

  .hero-image {
    display: flex;
    align-self: flex-end;
    max-height: 55vh;

    img {
      width: 55vh;
      transition: transform 0.2s ease-out;
    }

    .background-gradient {
      position: absolute;
      bottom: 0;
      left: 50%;
      transform: translateX(-50%);
      width: 85%;
      height: 85%;
      background: linear-gradient(120deg, #04b0ca, #0077be, #04b0ca);
      filter: blur(120px);
      z-index: -1
    }
  }
}

@media screen and (max-width: 992px) {
  .hero {
    flex-direction: column;
    align-items: center;
    height: 90vh;
    padding: 4rem 1.5rem 0rem 1.5rem;
    text-align: center;

    .hero-text {
      max-height: 50%;
      max-width: 100%;
      h1 {
        font-size: 3rem;
      }
      h2 {
        font-size: 1.5rem;
      }
      p {
        font-size: 1rem;
      }
      .hero-actions {
        justify-content: center;
      }
    }

    .hero-image {
      position: relative;
      max-height: 65%;
      max-width: 100%;

      align-self: unset;
      align-items: flex-end;
      margin-top: 2rem;

      img {
        width: 100%;
        height: 100%;
      }
    }
  }
}
</style>
