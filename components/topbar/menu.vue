<!--
  menu with links to group of topic pages
-->

<template>
  <div class="menu">
    <div v-for="item in sections" :key="item.key">
      <h1 class="menuTitle" @click="goTo(item.key)">
        {{ item.displayText }}
      </h1>
      <div v-for="elem in item.content" :key="elem">
        <p class="textMenu">{{ elem }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data: () => ({
    paths: [
      ['about', '/'], //  TODO insert the path
      ['areas', '/areas/ourWorkfields'],
      ['products', '/products/products'],
      ['people', '/peoples/people'],
    ],
    sections: [
      {
        key: 'about',
        displayText: 'About us',
        content: ['placeholder1', 'placeholder2', 'placeholder3'],
      },
      {
        key: 'areas',
        displayText: 'Areas',
        content: ['placeholder1', 'placeholder2', 'placeholder3'],
      },
      {
        key: 'products',
        displayText: 'Products',
        content: ['placeholder', 'placeholder', 'placeholder'],
      },
      {
        key: 'people',
        displayText: 'People',
        content: ['placeholder1', 'placeholder2', 'placeholder3'],
      },
    ],
  }),

  methods: {
    goTo(section) {
      let path = 'error'
      this.$data.paths.forEach((element) => {
        if (element[0] === section) path = element[1]
      })
      this.$emit('my-click')
      console.log('Pushing section ' + section + ' @ ' + path)
      this.$router.push({ path })
    },
  },
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
