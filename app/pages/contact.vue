<template>
  <div class="content-container">
    <h1>Contact me</h1>

    <form class="form" @submit.prevent="submitForm">
      <div class="form-fields">
        <label class="form-label" for="name">Name</label>
        <input
          v-model="contactInformation.name"
          class="form-input"
          id="name"
          placeholder="Name"
        />
      </div>

      <div class="form-fields">
        <label class="form-label" for="email">Mail address</label>
        <input
          class="form-input"
          v-model="contactInformation.emailAddress"
          id="email"
          placeholder="Email adress"
        />
      </div>

      <div class="form-fields">
        <label class="form-label" for="subject">Subject</label>
        <input
          class="form-input"
          v-model="contactInformation.subject"
          id="subject"
          placeholder="Subject"
        />
      </div>

      <div class="form-fields">
        <label class="form-label" for="message">Message</label>
        <textarea
          class="form-area"
          v-model="contactInformation.subject"
          id="subject"
          placeholder="Subject"
        ></textarea>
      </div>

      <button type="submit">Submit</button>
    </form>
  </div>
</template>

<script setup lang="ts">
useHead({
  title: "Ian van de Poll - Contact",
  meta: [{ name: "description", content: "Contact page." }],
});

const contactInformation = reactive({
  name: "",
  emailAddress: "",
  subject: "",
  message: "",
});

const submitForm = async () => {};
</script>

<style scoped>
.form {
  display: block;
  margin: 2rem 0 0 0;
}

.form-label {
  display: block;
  font-weight: bold;
  font-size: 0.9rem;
  margin-bottom: 4px;
}

.form-input {
  width: 100%;
  border: 3px solid #808080;
  font-size: 1.15rem;
  padding: 8px 12px;
}

.form-area {
  min-width: 100%;
  max-width: 100%;
  min-height: 10rem;
  border: 3px solid #808080;
  font-size: 1.15rem;
  padding: 8px 12px;
}

.form-fields {
  margin-bottom: 1rem;
}
</style>
