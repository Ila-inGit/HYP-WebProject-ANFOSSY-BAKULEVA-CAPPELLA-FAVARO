export
<template>
  <div>
    <info-container
      v-bind:title="'Products'"
      v-bind:description="'This is a description of the products'"
    />
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
import InfoContainer from '~/components/infoContainer.vue'

export default {
  components: {
    productCard,
    InfoContainer,
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
</style>
