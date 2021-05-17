<!--
  logo + company name + menu icon
-->

<template>
  <div>
    <link
      rel="stylesheet"
      href="//fonts.googleapis.com/css?family=Roboto:400,500,700,400italic|Material+Icons"
    />
    <div class="titleContainer">
      <img
        class="logo"
        src="http://getdrawings.com/free-icon-bw/letter-c-icon-8.png"
      />
      <h1 class="title">Comc company</h1>
      <button class="button" @click="invertVisibility">&#9776;</button>
    </div>
    <div :hidden="!showMenu">
      <TopbarMenu @close="invertVisibility" />
    </div>
    <breadcrumbs />
  </div>
</template>

<script>
// import Breadcrumbs from '~/components/breadcrumbs/Breadcrumbs.vue'
export default {
  components: {
    // Breadcrumbs,
  },
  data: () => ({
    showMenu: false,
  }),

  methods: {
    invertVisibility() {
      this.showMenu = !this.showMenu
    },
  },
}
</script>

<style>
.titleContainer {
  display: flex;
  justify-content: flex-start;
  flex-wrap: wrap;
  box-sizing: border-box;
  height: 10vh;
  width: 100vw;
}

.title {
  display: flex;
  align-self: center;

  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 5vh;
  color: #0f0f0f;
  letter-spacing: 1px;
  padding-left: 2%;
  padding-right: 2%;
}

.logo {
  height: 90%;
  width: auto;
  border: transparent;
  padding-left: 2.5%;
  padding-top: 1%;
}

.button {
  display: flex;
  align-self: center;
  font-size: 5vh;
  background-color: transparent;
  border-color: transparent;
  color: #0f0f0f;
}

.button:hover {
  background-color: #ddd;
  color: black;
}
</style>
