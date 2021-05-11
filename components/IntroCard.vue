<!--
> A card to introduce a topic
> shows essential data, meant to be presented in a list
-->
<template>
  <div class="card" @click="$emit('click')">
    <div class="card-info">
      <h1>{{ title }}</h1>
      <p>{{ description }}</p>
    </div>
    <img :src="image" alt="item image" class="imageCard" />
  </div>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      default: 'Somebody forgot the title :)',
    },
    description: {
      type: String,
      default: 'Somebody forgot the description',
    },
    image: {
      type: String,
      default: '',
    },
  },
}
</script>

<style>
.card {
  display: flex;
  height: auto;
  width: auto;
  padding: 1% 5%;
  border: solid #999;
  border-radius: 10px;
  flex-direction: row;
  justify-content: space-between;
  margin: 1%;
}
.card:hover {
  color: #008cba;
}
.cardInfo {
  display: flex;
  flex-direction: column;
  height: auto;
}
.cardTitle {
  display: flex;
  justify-content: center;
}

.imageCard {
  height: 20vh;
  width: auto;
}
</style>
