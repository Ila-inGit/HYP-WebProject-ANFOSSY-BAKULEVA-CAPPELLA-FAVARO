<!--
  wrapper of the logo
-->
<template>
  <header class="topnav">
    <logo></logo>
  </header>
</template>

<script>
import Logo from '~/components/topbar/logo'
export default {
  components: {
    Logo,
  },
}
</script>

<style>
.right {
  display: flex;
  justify-content: space-between;
  margin: auto;
  max-width: 50%;
}

/* The navbar container */
.topnav {
  overflow: hidden;
  background-color: white;
  flex: auto;
  padding: 1% 0.5% 0.5% 0%;
}
</style>
