<!--
  This sets the page to have header and footer
  import this to wrap your page in these
-->

<!--Show the pages wrapped between header and footer-->
<template>
  <div>
    <the-topbar />
    <Nuxt class="page" />
    <the-footer />
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
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}
@media screen and (max-width: 400px) {
  html {
    font-size: 12px;
  }
}
@media screen and (min-width: 400px) {
  html {
    font-size: 60%;
  }
}

.page {
  max-width: 1000px;
  margin: auto;
}

a {
  color: white;
}
</style>
