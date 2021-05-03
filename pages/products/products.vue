<!--
  page with list of products
-->

export
<template>
  <div>
    <SectionTitle
      :title="'Products'"
      :subtitle="'This is a description of the products'"
    />
    <intro-card
      v-for="product in products"
      :key="product.id"
      :item="product"
      @click="goToProduct(product.id)"
    />
  </div>
</template>

<script>
import db from 'static/fake_db.json'
import introCard from '~/components/IntroCard'

export default {
  components: {
    introCard,
  },
  layout: 'PageLayout',

  data() {
    return { products: db.products }
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
