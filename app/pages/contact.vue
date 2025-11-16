<template>
  <div class="section">
    <div class="section-container contact-container">
      <h1 class="contact-title">Contact Me</h1>

      <form class="form" @submit.prevent="submitForm">
        <div class="form-fields">
          <label class="form-label" for="name">Name</label>
          <input
            id="name"
            v-model="contactInformation.name"
            class="form-input"
            placeholder="Your name"
            required
          >
        </div>

        <div class="form-fields">
          <label class="form-label" for="email">Mail address</label>
          <input
            id="email"
            v-model="contactInformation.emailAddress"
            class="form-input"
            type="email"
            placeholder="Your email address"
            required
          >
        </div>

        <div class="form-fields">
          <label class="form-label" for="subject">Subject</label>
          <input
            id="subject"
            v-model="contactInformation.subject"
            class="form-input"
            placeholder="Subject"
            required
          >
        </div>

        <div class="form-fields">
          <label class="form-label" for="message">Message</label>
          <textarea
            id="message"
            v-model="contactInformation.message"
            class="form-area"
            placeholder="Write your message here..."
            required
          />
        </div>

        <!-- Google reCAPTCHA -->
        <div class="form-fields">
          <div class="g-recaptcha" :data-sitekey="recaptchaSiteKey"></div>
        </div>

        <button type="submit" class="submit-button">Submit</button>
      </form>
    </div>
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

const captcha = reactive({
  a: Math.floor(Math.random() * 10) + 1,
  b: Math.floor(Math.random() * 10) + 1,
});

const captchaInput = ref("");

const validateCaptcha = () => Number(captchaInput.value) === captcha.a + captcha.b;

const submitForm = async () => {
  if (!validateCaptcha()) {
    alert("Captcha incorrect. Please try again.");
    return;
  }
  alert("Form submitted successfully!");
};
</script>

<style scoped>
.contact-container {
  max-width: 700px;
  margin: 0 auto;
  padding: 2rem;
  background: #ffffff;
  border-radius: 16px;
  box-shadow: 0 4px 20px rgba(0,0,0,0.08);
}

.contact-title {
  text-align: center;
  font-size: 2.2rem;
  font-weight: bold;
  margin-bottom: 2rem;
}

.form {
  display: block;
}

.form-label {
  display: block;
  font-weight: bold;
  font-size: 0.95rem;
  margin-bottom: 4px;
}

.form-input, .form-area {
  width: 100%;
  border: 3px solid #808080;
  border-radius: 8px;
  font-size: 1.1rem;
  padding: 10px 12px;
  transition: border 0.2s ease;
}

.form-input:focus,
.form-area:focus {
  border-color: #000;
  outline: none;
}

.form-area {
  min-height: 10rem;
  resize: vertical;
}

.form-fields {
  margin-bottom: 1.2rem;
}

.submit-button {
  width: 100%;
  padding: 14px 0;
  background: #000;
  color: white;
  border: none;
  border-radius: 10px;
  font-size: 1.2rem;
  font-weight: bold;
  cursor: pointer;
  transition: background 0.2s ease;
}

.submit-button:hover {
  background: #333;
}
</style>
