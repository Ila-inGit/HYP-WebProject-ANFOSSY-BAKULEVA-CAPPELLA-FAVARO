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
      <button class="menu-button" @click="invertVisibility">&#9776;</button>
    </div>
    <transition name="slide">
      <div v-if="showMenu">
        <TopbarMenu @close="invertVisibility" />
      </div>
    </transition>
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
    showMenu: false, // Boolean(window.innerWidth > 1000) has ref error
  }),
  beforeMount() {
    window.addEventListener('resize', this.handleResize)
    window.addEventListener('scroll', this.handleScroll)
  },
  mounted() {
    if (window.innerWidth > 650 && this.showMenu === false) this.showMenu = true
  },
  beforeDestroy() {
    window.removeEventListener('resize', this.handleResize)
    window.removeEventListener('scroll', this.handleScroll)
  },
  methods: {
    invertVisibility() {
      if (window.innerWidth <= 650) this.showMenu = !this.showMenu
    },
    handleResize() {
      if (window.innerWidth > 650 && this.showMenu === false)
        this.showMenu = true
      else if (window.innerWidth <= 650) this.showMenu = false
    },
    handleScroll() {
      if (window.pageYOffset > 20 && window.innerWidth <= 650)
        this.showMenu = false
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
  padding: 0% 0% 5px 0%;
  height: 10vh;
  width: 100vw;
}

@media screen and (max-width: 650px) {
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
@media screen and (max-width: 650px) {
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

.menu-button {
  display: flex;
  align-self: center;
  font-size: 5vh;
  background-color: transparent;
  border-color: transparent;
  color: #0f0f0f;
}

@media screen and (min-width: 650px) {
  .menu-button {
    display: none;
  }
}

.menu-button:hover {
  background-color: black;
  color: white;
}

.slide-enter-active {
  -moz-transition-duration: 0.6s;
  -webkit-transition-duration: 0.6s;
  -o-transition-duration: 0.6s;
  transition-duration: 0.6s;
  -moz-transition-timing-function: ease-in;
  -webkit-transition-timing-function: ease-in;
  -o-transition-timing-function: ease-in;
  transition-timing-function: ease-in;
}

.slide-leave-active {
  -moz-transition-duration: 0.6s;
  -webkit-transition-duration: 0.6s;
  -o-transition-duration: 0.6s;
  transition-duration: 0.6s;
  -moz-transition-timing-function: cubic-bezier(0, 1, 0.5, 1);
  -webkit-transition-timing-function: cubic-bezier(0, 1, 0.5, 1);
  -o-transition-timing-function: cubic-bezier(0, 1, 0.5, 1);
  transition-timing-function: cubic-bezier(0, 1, 0.5, 1);
}

.slide-enter-to,
.slide-leave {
  max-height: 300px;
  overflow: hidden;
}

.slide-enter,
.slide-leave-to {
  overflow: hidden;
  max-height: 0;
}
</style>
