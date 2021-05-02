<!--
  This sets the page to have header and footer
  import this to wrap your page in these
-->

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
