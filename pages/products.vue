export
<template>
  <div>
    <h1>Look at all those products!</h1>
    <product-card
      v-for="product in products"
      :key="product"
      v-bind:product="product"
    />
  </div>
</template>

<script>
import productCard from '~/components/products/productCard.vue'
export default {
  components: {
    productCard,
  },
  layout: 'PageLayout',
  data: () => ({
    // TODO: replace with DB
    products: [
      {
        title: 'Pebbles',
        description:
          "Amazing tool to create circles on water.\nYes, it's plenty on the river, but ours are better.",
        image: 'https://picsum.photos/seed/234/300/300',
        page: 'link',
      },
      {
        title: 'Dogs',
        description: "Don't you love dogs?",
        image: 'https://picsum.photos/seed/57/300/300',
        page: 'link',
      },
      {
        title: 'Bananas, a bit too ripe',
        description: 'You can still remove the dark parts',
        image: 'https://picsum.photos/seed/3467/300/300',
        page: 'link',
      },
    ],
  }),
}
</script>

<style>
.div {
  width: 100%;
}
</style>
