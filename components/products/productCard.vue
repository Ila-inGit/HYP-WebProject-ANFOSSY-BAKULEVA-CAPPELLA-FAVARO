<template>
  <div class="card" @click="$emit('click')">
    <div class="card-info">
      <h1>{{ product.title }}</h1>
      <p>{{ product.description }}</p>
    </div>
    <img :src="product.image" alt="product image" class="imageCard" />
  </div>
</template>

<script>
export default {
  props: {
    product: {
      title: {
        type: String,
        default: () => '',
      },
      description: {
        type: String,
        default: () => '',
      },
      image: {
        type: String,
        default: () => '',
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
