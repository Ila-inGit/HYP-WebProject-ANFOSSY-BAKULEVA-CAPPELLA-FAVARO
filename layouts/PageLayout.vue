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
  box-sizing: border-box;
}
*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
}
.container {
  padding: 10px;
  margin: 40px auto;
  max-width: 800px;
  text-align: center;
}
a {
  color: white;
}
img {
  width: 100%;
}
</style>
