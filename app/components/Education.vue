<template>
  <section id="education" class="content-container">
    <h1>Education</h1>

    <div class="education-header">
      <h2>Bachelor of Science in Computer Science</h2>
      <p><strong>University:</strong> Avans University of Science</p>
      <p><strong>Grade:</strong> 7.9</p>
      <p><strong>Thesis grade:</strong> 8.5</p>
      <p><strong>Duration:</strong> August 2016 - February 2021</p>
      <p>
        <strong>Description:</strong> A comprehensive program focusing on
        computer science fundamentals and practical skills.
      </p>
      <div class="courses">
        <h3>Key Courses:</h3>
        <ul>
          <li>Data Structures and Algorithms</li>
          <li>Operating Systems</li>
          <li>Database Systems</li>
          <li>Software Engineering</li>
          <li>Computer Networks</li>
        </ul>
      </div>
    </div>

    <div class="education-header">
      <h2>Master of Science in Artificial Intelligence</h2>
      <p><strong>University:</strong> Utrecht University</p>
      <p><strong>Grade:</strong>4.0 GPA</p>
      <p><strong>Duration:</strong> September 2022 - present</p>
      <p>
        <strong>Description:</strong> An advanced program focused on machine
        learning, neural networks, and AI applications.
      </p>
      <div class="courses">
        <h3>Key Courses:</h3>
        <ul>
          <li>Machine Learning</li>
          <li>Deep Learning</li>
          <li>Natural Language Processing</li>
          <li>Computer Vision</li>
          <li>AI Ethics and Governance</li>
        </ul>
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
.education-header {
  background-color: #fafdff;
  padding: 20px;
  margin-top: 25px;
  margin-bottom: 20px;
  border-radius: 10px;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
}
</style>