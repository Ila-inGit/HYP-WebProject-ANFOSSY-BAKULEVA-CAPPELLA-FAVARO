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
  width: 100%;
  margin: auto;
  max-width: 50%;
}
/* The navbar container */
.topnav {
  overflow: hidden;
  background-color: #ddd;
  flex: auto;
}
</style>
