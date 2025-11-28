<template>
  <section id="experience" class="experience-section">
    <div class="section-container">
      <h1 class="section-title">Work Experience</h1>

      <!-- TNO – Adversarial AI -->
      <div class="experience-item">
        <div class="experience-image">
          <img src="~/assets/images/TNO.svg" alt="TNO Logo" >
        </div>

        <div class="experience-content">
          <div class="experience-header">
            <h2 class="role">Intern Adversarial AI</h2>
            <p class="duration">September 2024 – July 2025</p>
          </div>

          <p class="company">TNO</p>
          <p class="location">Den Haag, Zuid-Holland, Nederland · On-site</p>

          <p class="description">
            Research internship focused on adversarial machine learning, robust
            computer vision models, and evaluating global-local feature fusion
            architectures for multi-scale adversarial detection.
          </p>

          <div class="skills">
            <p class="skills-title">Skills</p>
            <ul>
              <li>Linux</li>
              <li>Communication</li>
              <li>Machine Learning</li>
              <li>Computer Vision</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Hilti – Software Developer -->
      <div class="experience-item">
        <div class="experience-image">
          <img src="~/assets/images/hilti.svg" alt="Hilti Logo" >
        </div>

        <div class="experience-content">
          <div class="experience-header">
            <h2 class="role">Software Developer (Part-time)</h2>
            <p class="duration">August 2018 – March 2024</p>
          </div>

          <p class="company">Hilti Nederland BV</p>
          <p class="location">Berkel en Rodenrijs, Zuid-Holland, Nederland</p>

          <p class="description">
            Part-time role involving technical software development, internal
            tooling, and designing workflow systems for multiple teams.
          </p>

          <div class="skills">
            <p class="skills-title">Skills</p>
            <ul>
              <li>Git</li>
              <li>Problem solving</li>
              <li>Technical Software Development</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Hilti – Technical Software Developer Intern -->
      <div class="experience-item">
        <div class="experience-image">
          <img src="~/assets/images/hilti.svg" alt="Hilti Logo" >
        </div>

        <div class="experience-content">
          <div class="experience-header">
            <h2 class="role">Technical Software Developer (Internship)</h2>
            <p class="duration">October 2019 – April 2020</p>
          </div>

          <p class="company">Hilti Nederland BV</p>
          <p class="location">Berkel en Rodenrijs, Zuid-Holland, Nederland</p>

          <p class="description">
            Internship focused on developing internal software tools, improving
            efficiency, and enhancing technical documentation pipelines.
          </p>

          <div class="skills">
            <p class="skills-title">Skills</p>
            <ul>
              <li>HTML5</li>
              <li>Git</li>
              <li>Frontend & Backend Development</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- TNO – Virtual Worlds in the Browser -->
      <div class="experience-item">
        <div class="experience-image">
          <img src="~/assets/images/TNO.svg" alt="TNO Logo" />
        </div>

        <div class="experience-content">
          <div class="experience-header">
            <h2 class="role">Virtual Worlds in the Browser (Internship)</h2>
            <p class="duration">September 2021 – February 2022</p>
          </div>

          <p class="company">TNO</p>
          <p class="location">Den Haag, Zuid-Holland, Nederland</p>

          <p class="description">
            Graduation project on real-time visualization of virtual 3D
            environments in the browser using the Cesium.js framework, enabling
            efficient large-scale rendering.
          </p>

          <div class="skills">
            <p class="skills-title">Skills</p>
            <ul>
              <li>Git</li>
              <li>Communication</li>
              <li>WebGL</li>
              <li>3D Visualization</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
defineOptions({
  name: "WorkExperienceComponent",
});
</script>

<style scoped lang="scss">
@use "~/assets/css/main.scss";

@import "~/assets/css/variables.scss";

.experience-section {
  @extend .section;

  .section-container {
    @extend .section-container;
  }

  .section-title {
    font-size: 2.6rem;
    font-weight: bold;
    color: $color-primary;
    margin-bottom: 4rem;
    letter-spacing: 0.5px;
  }

  .experience-item {
    display: flex;
    flex-wrap: wrap;
    align-items: flex-start;
    padding: 1.5rem 0;
    margin-bottom: 2.5rem;
    border-bottom: 1px solid rgba(0, 0, 0, 0.08);
    transition: transform 0.25s ease;

    &:last-child {
      border-bottom: none;
    }

    &:hover {
      transform: translateY(-2px);
    }

    &:hover .experience-image img {
      filter: none;
      opacity: 1;
    }

    .experience-image {
      flex: 0 0 220px;
      display: flex;
      justify-content: center;
      align-items: center;
      margin-right: 2rem;
      margin-bottom: 1.5rem;

      img {
        max-width: 90%;
        height: auto;
        filter: grayscale(100%);
        opacity: 0.7;
        transition: filter 0.4s ease, opacity 0.4s ease;

        &:hover {
          filter: none;
          opacity: 1;
        }
      }
    }

    /* CONTENT */
    .experience-content {
      flex: 1;
      min-width: 250px;

      .experience-header {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        margin-bottom: 0.5rem;

        .role {
          font-size: 1.6rem;
          font-weight: 600;
          color: #527a99;
        }

        .duration {
          font-size: 0.95rem;
          color: #777;
          margin-top: 0.3rem;
        }

        @media (min-width: 700px) {
          flex-direction: row;
          align-items: center;
        }
      }

      .company {
        font-size: 1.1rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 0.2rem;
      }

      .location {
        font-size: 0.95rem;
        color: #555;
      }

      .description {
        color: #444;
        margin: 1rem 0 1.3rem;
        line-height: 1.6;
        font-size: 1.05rem;
      }

      .skills {
        .skills-title {
          font-size: 1.05rem;
          font-weight: 600;
          color: #527a99;
          margin-bottom: 0.5rem;
        }

        ul {
          display: flex;
          flex-wrap: wrap;
          gap: 0.6rem 1rem;
          list-style: none;
          padding: 0;
          margin: 0;

          li {
            position: relative;
            padding-left: 1rem;
            font-size: 0.95rem;
            color: #555;

            &::before {
              content: "•";
              color: #7393b3;
              position: absolute;
              left: 0;
            }
          }
        }
      }
    }
  }

  /* RESPONSIVE */
  @media screen and (max-width: 992px) {
    .experience-item {
      flex-direction: column;
      align-items: center;
      text-align: center;
      padding: 2rem 0;

      .experience-image {
        margin: 0 auto 1rem auto;
      }

      .experience-content {
        .experience-header {
          align-items: center;

          .duration {
            margin-top: 0.5rem;
          }
        }

        .skills ul {
          justify-content: center;
        }
      }
    }
  }
}
</style>
