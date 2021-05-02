<template>
  <div>
    <the-topbar></the-topbar>
    <Nuxt />
    <the-footer></the-footer>
  </div>
</template>

<script>
import TheTopbar from '~/components/topbar/TheTopbar'
import TheFooter from '~/components/TheFooter.vue'
export default {
  components: {
    TheTopbar,
    TheFooter,
  },
}
</script>

<style>
html {
  font-family: 'Roboto', sans-serif;
}

a {
  color: white;
}
</style>
