<template>
  <section id="about" class="about-section">
    <div class="about-container">
      <div class="about-text">
        <h1>About Me</h1>
        <p>
          I'm Ian — a software and machine learning engineer passionate about building
          <span class="highlight"> robust AI systems </span> and exploring how
          <span class="highlight"> learning-based agents </span> can make autonomous decisions.
        </p>

        <h2>Academic Background</h2>
        <p>
          I hold a Bachelor’s degree in Computer Science from Avans University of Applied Sciences
          and am currently pursuing a Master’s in Artificial Intelligence at Utrecht University.
          My research focuses on adversarial detection and robust computer vision models.
        </p>

        <h2>Professional Experience</h2>
        <p>
          During my time at Hilti, I developed automation systems that streamlined
          manual processes and improved reliability. I enjoy combining
          <span class="highlight">practical engineering</span> with
          <span class="highlight">theoretical research</span> to create scalable solutions.
        </p>
      </div>

      <div class="about-skills">
        <h2>Skills</h2>
        <div class="skill-grid">
          <span v-for="skill in skills" :key="skill" class="skill-badge">
            {{ skill }}
          </span>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
defineOptions({ name: "AboutMeComponent" });

const skills = [
  "Python", "C++", "C#", "Java",
  "TypeScript", "Node.js", "Vue.js", "Nuxt.js",
  "Docker", "Linux", "SQL", "Git",
  "PyTorch", "Scikit-learn", "UML", "Scrum"
];
</script>

<style scoped lang="scss">
@use 'sass:color';

@use "~/assets/css/main.scss";
@import "~/assets/css/variables.scss";

.about-section {
  @extend .section;
  
  // background: linear-gradient(180deg, $color-primary 0%, $color-bg-light 10%);

  .about-container {
    @extend .section-container;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap: 3rem;
  }

  .about-text {
    flex: 1 1 55%;

    h1 {
      // color: #7393b3;
      font-size: 2.5rem;
      margin-bottom: 1rem;
    }

    h2 {
      color: #527a99;
      margin-top: 2rem;
      margin-bottom: 0.75rem;
      font-size: 1.5rem;
      border-left: 4px solid #7393b3;
      padding-left: 0.75rem;
    }

    p {
      margin-bottom: 1.2rem;
      font-size: 1.1rem;
      line-height: 1.7;
    }

    .highlight {
      color: #7393b3;
      font-weight: 600;
    }
  }

  .about-skills {
    flex: 1 1 35%;
    background: white;
    padding: 2rem;
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);

    h2 {
      color: #7393b3;
      margin-bottom: 1rem;
      font-size: 1.5rem;
    }

    .skill-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 0.6rem;
    }

    .skill-badge {
      background: #7393b3;
      color: white;
      padding: 0.4rem 0.8rem;
      border-radius: 20px;
      font-size: 0.95rem;
      transition: background 0.3s;

      &:hover {
        background: #527a99;
      }
    }
  }

  @media screen and (max-width: 1240px) {
    .about-container {
      flex-direction: column;
      align-items: center;
    }
    .about-text, .about-skills {
      flex: 1 1 100%;
      text-align: center;
    }
    .about-skills {
      box-shadow: none;
      background: transparent;
      padding: 0;
    }
  }
}
</style>