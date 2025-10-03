// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  components: true,
  devtools: { enabled: true },

  modules: [
    '@nuxt/content',
    '@nuxt/eslint',
    '@nuxt/fonts',
    '@nuxt/icon',
    '@nuxt/image'
  ],

  css: ["~/assets/css/main.scss"],

  fonts: {
    families: [
      {
        name: 'Roboto',
        provider: 'google',
        weights: [100, 300, 400, 500, 700, 900],
        styles: ['normal'],
        display: 'swap'
      }
    ]
  }
})