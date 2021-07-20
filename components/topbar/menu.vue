<!--
  menu with links to group of topic pages
-->

<template>
  <div class="menu">
    <div v-for="item in sections" :key="item.key" class="fakeButton fill">
      <nuxt-link
        :to="item.key"
        class="menuTitle"
        style="text-decoration: none"
        @click.native="$emit('close')"
      >
        <h2>{{ item.displayText }}</h2>
      </nuxt-link>
    </div>
  </div>
</template>

<script>
export default {
  data: () => ({
    sections: [
      {
        key: '/about',
        displayText: 'About us',
      },
      {
        key: '/areas',
        displayText: 'Our Areas',
      },
      {
        key: '/products',
        displayText: 'Our Products',
      },
      {
        key: '/team',
        displayText: 'Our Team',
      },
      {
        key: '/contact_us',
        displayText: 'Contact us',
      },
    ],
  }),
  metaInfo: {
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    ],
  },
}
</script>

<style>
.menu {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
}

@media screen and (max-width: 650px) {
  .menu {
    flex-direction: column;
    display: flex;
    align-items: center;
  }
}

.fakeButton {
  background: none;
  padding: 0% 1.5% 0% 1.5%;
  transition: 0.25s;
  min-width: 115px;
  text-align: center;
}
.fakeButton:hover,
.fakeButton:focus {
  border-color: rgb(235, 235, 235);
  color: #fff;
}

.fill:hover,
.fill:focus {
  box-shadow: inset 0 0 0 3em rgb(243, 243, 243);
}
.slide:hover,
.slide:focus {
  box-shadow: inset 11em 0 0 0 rgb(235, 235, 235);
}

.menuTitle {
  color: black;
}

.menuTitle:hover {
  cursor: pointer;
}
</style>
