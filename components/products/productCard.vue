<template>
  <div class="card">
    <div class="cardInfo">
      <h1>{{ product.title }}</h1>
      <p>{{ product.description }}</p>
      <button-with-text v-bind:title="'more'" class="cardTitle" />
    </div>
    <img v-bind:src="product.image" alt="product image" class="imageCard" />
  </div>
</template>

<script>
import ButtonWithText from '../ButtonWithText.vue'
export default {
  components: { ButtonWithText },
  props: {
    product: {
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
  padding-right: 5%;
  padding-left: 5%;
  padding-top: 1%;
  padding-bottom: 1%;
  border-style: solid;
  border: 1% px #999;
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
