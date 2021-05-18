<!--
  menu with links to group of topic pages
-->

<template>
  <div class="menu">
    <div v-for="item in sections" :key="item.key">
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
        key: '/our_workfields',
        displayText: 'Our Workfields',
      },
      {
        key: '/products',
        displayText: 'What we offer',
      },
      {
        key: '/our_team',
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
@media screen and (max-width: 600px) {
  .menu {
    flex-direction: column;
    display: flex;
    align-items: center;
  }
}
.menuTitle {
  color: black;
  text-decoration-thickness: 3;
}
.menuTitle:hover {
  cursor: pointer;
}

.textMenu {
  color: #fff;
  padding: 6px;
}
.textMenu:hover {
  background-color: #fff;
  color: black;
}
</style>
