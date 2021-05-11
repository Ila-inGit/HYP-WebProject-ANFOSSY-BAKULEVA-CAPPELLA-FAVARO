<!--
  menu with links to group of topic pages
-->

<template>
  <div class="menu">
    <div v-for="item in sections" :key="item.key">
      <nuxt-link :to="item.key" class="menuTitle" style="text-decoration: none">
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
        key: 'about',
        displayText: 'About us',
      },
      {
        key: '/areas/ourWorkfields',
        displayText: 'Our Workfields',
      },
      {
        key: '/products/products',
        displayText: 'What we offer',
      },
      {
        key: 'people',
        displayText: 'Our Team',
      },
      {
        key: '/contact us',
        displayText: 'Contact us',
      },
    ],
  }),
}
</script>

<style>
.menu {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
}
.menuTitle {
  color: white;
  text-decoration-thickness: 3;
}
.menuTitle:hover {
  cursor: pointer;
}

.textMenu {
  color: white;
  padding: 6px;
}
.textMenu:hover {
  background-color: #ddd;
  color: black;
}
</style>
