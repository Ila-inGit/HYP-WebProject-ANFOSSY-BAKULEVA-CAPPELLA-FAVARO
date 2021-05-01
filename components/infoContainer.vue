<template>
  <div class="infoSection">
    <h1>{{ title }}</h1>
    <p>{{ description }}</p>
  </div>
</template>

<script>
export default {
  props: {
    title: { type: String },
    description: { type: String },
  },
}
</script>

<style>
.infoSection {
  background: #444;
  color: white;
  padding: 5vh;
}
</style>
