<template>
  <section id="education" class="education-section">
    <div class="section-container">
      <h1 class="section-title">Education</h1>

      <div class="education-item">
        <div class="education-image">
          <img
            src="~/assets/images/uu_logo.png"
            alt="Utrecht University Logo"
          />
        </div>

        <div class="education-content">
          <div class="education-header">
            <h2 class="degree">MSc Artificial Intelligence</h2>
            <p class="duration">September 2022 – Present</p>
          </div>
          <p class="university">Utrecht University</p>
          <p class="grade">Grade: 7.2</p>
          <p class="thesis-grade">Thesis grade: 7.0</p>

          <p class="description">
            Advanced study of machine learning and neural architectures, with
            research on adversarial detection and robust computer vision models
            using global-local feature fusion.
          </p>

          <div class="courses">
            <p class="courses-title">Key Courses</p>
            <ul>
              <li>Machine Learning</li>
              <li>Deep Learning</li>
              <li>Computer Vision</li>
              <li>Natural Language Processing</li>
              <li>AI Ethics & Governance</li>
            </ul>
          </div>
        </div>
      </div>

      <div class="education-item">
        <div class="education-image">
          <img
            src="~/assets/images/avans_logo.svg"
            alt="Avans University Logo"
          >
        </div>

        <div class="education-content">
          <div class="education-header">
            <h2 class="degree">BSc Computer Science</h2>
            <p class="duration">August 2016 – February 2021</p>
          </div>

          <p class="university">Avans University of Applied Sciences</p>
          <p class="grade">Grade: 7.9</p>
          <p class="thesis-grade">Thesis: 8.5</p>

          <p class="description">
            A program combining theoretical and practical computer science,
            focusing on system design, software engineering, and algorithmic
            problem-solving.
          </p>

          <div class="courses">
            <p class="courses-title">Key Courses</p>
            <ul>
              <li>Data Structures & Algorithms</li>
              <li>Operating Systems</li>
              <li>Database Systems</li>
              <li>Software Engineering</li>
              <li>Computer Networks</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
defineOptions({
  name: "EducationComponent",
});
</script>

<style scoped lang="scss">
@use "~/assets/css/main.scss";
@import "~/assets/css/variables.scss";

.education-section {
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

  .education-item {
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

    &:hover .education-image img {
      filter: none;
      opacity: 1;
    }

    /* --- Logo --- */
    .education-image {
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
        transition:
          filter 0.4s ease,
          opacity 0.4s ease;

        &:hover {
          filter: none;
          opacity: 1;
        }
      }
    }

    /* --- Content --- */
    .education-content {
      flex: 1;
      min-width: 250px;

      .education-header {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        margin-bottom: 0.5rem;

        .degree {
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

      .university {
        font-size: 1.1rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 0.2rem;
      }

      .grade,
      .thesis-grade {
        font-size: 0.95rem;
        color: #555;
        margin: 0.3rem 0;
      }

      .description {
        color: #444;
        margin: 1rem 0 1.3rem;
        line-height: 1.6;
        font-size: 1.05rem;
      }

      .courses {
        .courses-title {
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
          margin: 0;
          padding: 0;

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

  /* --- Responsive --- */
  @media screen and (max-width: 992px) {
    .education-item {
      flex-direction: column;
      align-items: center;
      text-align: center;
      border-bottom: 1px solid rgba(0, 0, 0, 0.08);
      padding: 2rem 0;

      .education-image {
        margin: 0 auto 1rem auto;
      }

      .education-content {
        .education-header {
          align-items: center;

          .duration {
            margin-top: 0.5rem;
          }
        }

        .courses ul {
          justify-content: center;
        }
      }
    }
  }
}
</style>
