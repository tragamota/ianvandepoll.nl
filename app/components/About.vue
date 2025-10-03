<template>
  <section id="about" class="content-container">
    <div class="about">
      <h1>About me</h1>

      <p>
        Hello! My name is Ian, and I am a passionate software developer
        specializing in machine learning with a deep interest in research and
        developing state-of-the-art software systems.
      </p>

      <h2>Professional Journey and Skills</h2>
      <p>I have honed a diverse skill set encompassing:</p>
      <ul>
        <li>Microservice-based Application Development</li>
        <li>Web Development</li>
        <li>Computer Graphics</li>
        <li>Software Optimization</li>
        <li>(Deep) Machine Learning</li>
      </ul>
      <p>
        My journey began at Avans University of Applied Sciences, where I
        learned the applied side of software development, focusing on building
        and designing software integrated with hardware.
      </p>

      <h2>Academic Background</h2>
      <p>
        I hold a Bachelor’s degree in Computer Science from Avans University of
        Applied Sciences, which provided me with a solid foundation in software
        development. Currently, I am pursuing a Master’s in Artificial
        Intelligence at Utrecht University, with a focus on Autonomous Systems
        and Decision Making using (Deep) Reinforcement Learning.
      </p>

      <h2>Professional Experience</h2>
      <p>
        As a student, I have had the opportunity to apply my knowledge and
        skills at Hilti, where I grew both professionally and personally by
        contributing to their mission. I developed systems that automated tasks,
        significantly reducing manual labor-intensive jobs.
      </p>
    </div>

    <h1>Skills</h1>

    <ul>
      <li>C/C++</li>
      <li>C#</li>
      <li>Python</li>
      <li>Java</li>

      <li>Typescript / Javascript</li>
      <li>node.js</li>

      <li>Vue.js</li>
      <li>Nuxt.js</li>

      <li>Git(hub)</li>
      <li>UML</li>
      <li>Scrum</li>
      <li>Extreme programming</li>

      <li>Jetbrains</li>
      <li>Linux</li>
      <li>Docker</li>
      <li>SQL</li>

      <li>Scikit-learn</li>
      <li>Pytorch</li>
    </ul>
  </section>
</template>

<script setup lang="ts">
defineOptions({
  name: "AboutMeComponent"
})

useHead({
  title: "Ian van de Poll - About me",
  meta: [{ name: "description", content: "About me" }],
});
</script>

<style lang="scss">
.about > p {
  margin-bottom: 1.5rem;
}

.about > ul {
  list-style: lower-latin;

  margin-bottom: 1rem;
}
</style>