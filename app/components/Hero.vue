<template>
  <section id="hero" class="hero">
    <div class="hero-text">
      <h1>Ian van de Poll</h1>
      <h2>Software & ML Engineer</h2>
      <p>
        Building robust AI systems, adversarial detection, and scalable backend
        solutions.
      </p>
      <div class="hero-actions">
        <NuxtLink to="#about" class="btn">Portfolio</NuxtLink>
        <NuxtLink to="#cv" class="btn secondary">CV</NuxtLink>
      </div>
    </div>

    <div class="hero-image" :style="transformStyle">
      <img
        src="~/assets/images/portrait-min.png"
        alt="Portrait of Ian van de Poll"
      >
      <div class="background-gradient" />
    </div>
  </section>
</template>

<script setup lang="ts">
import { ref, computed, onUnmounted, watch } from "vue";

defineOptions({
  name: "HeroComponent",
});

const props = defineProps<{
  scrollY: number;
}>();

const parallaxY = ref(0);

let currentY = 0;
let rafId: number | null = null;

const tolerance = 1;
const maxTranslate = 240;
const easeFactor = 0.02;

const lerp = (start: number, end: number, t: number) => start + (end - start) * t;

const update = () => {
  const target = Math.min(props.scrollY * 0.6, maxTranslate);
  currentY = lerp(currentY, target, easeFactor);

  if (Math.abs(target - currentY) < tolerance) {
    currentY = target;
    parallaxY.value = currentY;
    rafId = null;
    return;
  }

  parallaxY.value = currentY;
  rafId = requestAnimationFrame(update);
};

watch(
  () => props.scrollY,
  () => {
    if (!rafId) 
      rafId = requestAnimationFrame(update);
  }
);

onUnmounted(() => {
  if (rafId) 
    cancelAnimationFrame(rafId);
});

const transformStyle = computed(() => ({
  transform: `translateY(${parallaxY.value}px)`,
  willChange: "transform",
}));
</script>

<style scoped lang="scss">
@import "~/assets/css/variables";

.hero {
  display: flex;
  position: relative;
  height: 60vh;

  align-items: center;
  justify-content: space-between;
  padding: 0 12vw;
  overflow: hidden;

  .hero-text {
    max-width: 45%;
    z-index: 10;

    h1 {
      font-size: 5rem;
      color: $color-primary;
      font-weight: 700;
    }

    h2 {
      font-size: 2rem;
      color: $color-primary;
      margin: 1rem 0;
    }

    p {
      font-size: 1.25rem;
      margin-bottom: 2rem;
      color: $color-text;
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
          border: 2px solid $color-primary;
          color: $color-primary;

          &:hover {
            background: $color-primary;
            color: #fff;
          }
        }

        &:not(.secondary) {
          background: $color-secondary;
          color: #fff;

          &:hover {
            background: darken($color-secondary, 7%);
          }
        }
      }
    }
  }

  .hero-image {
    display: flex;
    align-self: flex-end;
    max-height: 55vh;
    will-change: transform;

    img {
      width: 55vh;
      transition: transform 0.2s ease-out;
    }

    .background-gradient {
      position: absolute;
      bottom: 0;
      left: 50%;
      transform: translateX(-50%);
      width: 90%;
      height: 90%;
      background: linear-gradient(
        120deg,
        $color-hero-gradient-start,
        $color-hero-gradient-middle,
        $color-hero-gradient-end
      );
      filter: blur(120px);
      z-index: -1;
    }
  }
}

@media screen and (max-width: 1240px) {
  .hero {
    flex-direction: column;
    align-items: center;
    height: fit-content;
    padding: 4rem 1rem 0rem 1rem;
    text-align: center;

    .hero-text {
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
      max-width: 100%;
      margin-top: 2rem;
      align-items: flex-end;

      img {
        width: 100%;
        height: auto;
      }
    }
  }
}
</style>
