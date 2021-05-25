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
      default: 'Some error occurred',
    },
    description: {
      type: String,
      default: 'This is embarassing... Maybe try to refresh the page?',
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
  padding: 2%;
  border: solid #999;
  border-radius: 10px;
  flex-direction: row;
  align-items: flex-start;
  margin: 1%;
  justify-content: space-between;
}
@media screen and (max-width: 600px) {
  .card {
    width: 100%;
  }
}
@media screen and (min-width: 600px) and (max-width: 1000px) {
  .card {
    width: 40%;
  }
}
@media screen and (min-width: 1000px) {
  .card {
    width: 25%;
  }
}
.card:hover {
  color: #008cba;
}
.cardInfo {
  display: flex;
  flex-direction: column;
}

/** unfortunately here the image size is limited by the long text of the products */
.imageCard {
  padding-top: 5%;
  width: 20%;
}
</style>
