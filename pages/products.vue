export
<template>
  <div>
    <div class="intro">
      <h1>Products</h1>
      <p>This is a description of the products</p>
    </div>
    <product-card
      v-for="product in products"
      :key="product.id"
      v-bind:product="product"
      @click="goToProduct(product.id)"
    />
  </div>
</template>

<script>
import db from 'static/fake_db.json'
import productCard from '~/components/products/productCard.vue'

export default {
  components: {
    productCard,
  },
  layout: 'PageLayout',

  data() {
    return { products: db }
  },
  methods: {
    goToProduct(id) {
      this.$router.push({
        path: 'productPresentation',
        query: { productId: id },
      })
    },
  },
}
</script>

<style>
.div {
  width: 100%;
}

.intro {
  background: #444;
  color: white;
  padding: 5vh;
}
</style>
