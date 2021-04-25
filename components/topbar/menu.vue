<template>
  <div class="menu">
    <div v-for="item in sections" :key="item.key">
      <h1>{{ item.displayText }}</h1>
      <div v-for="elem in item.content" :key="elem">
        <p>{{ elem }}</p>
      </div>
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
        content: ['placeholder', 'placeholder', 'placeholder'],
      },
      {
        key: 'areas',
        displayText: 'Areas',
        content: ['placeholder', 'placeholder', 'placeholder'],
      },
      {
        key: 'products',
        displayText: 'Products',
        content: ['placeholder', 'placeholder', 'placeholder'],
      },
      {
        key: 'people',
        displayText: 'People',
        content: ['placeholder', 'placeholder', 'placeholder'],
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
</style>
