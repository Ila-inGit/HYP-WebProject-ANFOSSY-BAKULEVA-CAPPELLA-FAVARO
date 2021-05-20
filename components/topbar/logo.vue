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
      <nuxt-link to="/" class="logo">
        <img class="logo" src="~/static/letter-c-icon-8.png" alt="logo" />
      </nuxt-link>
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
  metaInfo: {
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    ],
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

@media screen and (max-width: 600px) {
  .titleContainer {
    display: flex;
    justify-content: space-between;
  }
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
@media screen and (max-width: 600px) {
  .title {
    display: none;
  }
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
  background-color: black;
  color: white;
}
</style>
