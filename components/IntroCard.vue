<!--
> A card to introduce a topic
> shows essential data, meant to be presented in a list
-->
<template>
  <div class="card" @click="$emit('click')">
    <div class="card-info">
      <h1>{{ item.title }}</h1>
      <p>{{ item.description }}</p>
    </div>
    <img :src="item.image" alt="item image" class="imageCard" />
  </div>
</template>

<script>
export default {
  props: {
    item: {
      title: {
        type: String,
        default: '',
      },
      description: {
        type: String,
        default: '',
      },
      image: {
        type: String,
        default: '',
      },
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
