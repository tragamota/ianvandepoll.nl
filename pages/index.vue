<template>
  <div class="content-container">
    <div class="title-container">
      <h1>Ian van de Poll</h1>
      <h2>Based in the Netherlands</h2>
      <h3>Software engineer and ML engineer</h3>
    </div>

    <picture>
      <source type="image/webp" srcset="~/assets/images/portrait-min.webp" />
      <img class="portrait" src="~/assets/images/portrait-min.png" />
    </picture>

    <div class="background-container">
      <div class="background-gradient"></div>
    </div>
  </div>
</template>

<style scoped lang="scss">
.portrait {
  display: block;
  position: absolute;

  pointer-events: none;
  user-select: none;

  max-width: 100%;
  width: 70vh;

  z-index: 10;

  left: 10vw;
  bottom: 0;
}

.title-container {
  display: block;
  position: absolute;

  top: 8vh;
  left: 5vh;

  z-index: 100;
}

.title-container > h1 {
  display: block;
  position: relative;

  -webkit-text-stroke: 2px #1a2f42;

  color: #4271a0;
  font-size: 5rem;
}

.title-container > h2 {
  display: block;
  position: relative;

  -webkit-text-stroke: 2px #1a2f42;

  color: #4271a0;
  font-size: 2rem;
}

.title-container > h3 {
  display: block;
  position: relative;

  color: #4271a0;

  -webkit-text-stroke: 2px #1a2f42;

  font-size: 3.25rem;
  margin-top: 2rem;
}

.background-container {
  display: block;
  position: absolute;

  top: 50%;
  left: 50%;

  transform: translate(-50%, -50%);

  width: 45vh;
  height: 45vh;
}

.background-gradient {
  display: block;
  position: absolute;

  z-index: -100;

  opacity: 1;
  filter: blur(150px);

  width: 100%;
  height: 100%;

  background-image: linear-gradient(#04b0ca, #0077be, #04b0ca);
}

@media screen and (max-width: 992px) {
  .portrait {
    width: 60vh;
    left: 0vw;
  }

  .title-container {
    top: unset;
    left: unset;

    padding-left: 1rem;
    padding-right: 1rem;
  }

  .title-container > h1 {
    font-size: 3rem;
  }

  .title-container > h2 {
    font-size: 1.25rem;
  }

  .title-container > h3 {
    font-size: 2rem;
  }

  .background-container {
    width: 35vh;
    height: 35vh;
  }
}

@media screen and (min-width: 992px) {
  .portrait {
    width: 60vh;
    left: 10vw;
  }
}

@media screen and (min-width: 1200px) {
  .portrait {
    width: 70vh;
    left: 20vw;
  }
}

@media screen and (min-width: 1400px) {
  .portrait {
    width: 70vh;
    left: 25vw;
  }
}

@media screen and (min-width: 1720px) {
  .portrait {
    width: 80vh;
    left: 30vw;
  }
}
</style>
