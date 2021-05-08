<!--
  page with list of products
-->
export
<template>
  <div>
    <SectionTitle
      :title="'Products'"
      :subtitle="'Our products are amazing! Have a look'"
    />
    <intro-card
      v-for="product in products"
      :key="product.id"
      :title="product.name"
      :description="product.shortDescription"
      :image="product.image"
      @click="goToProduct(product.id)"
    />
  </div>
</template>

<script>
import axios from 'axios'
import introCard from '~/components/IntroCard'

export default {
  components: {
    introCard,
  },
  layout: 'PageLayout',

  async asyncData() {
    const { data } = await axios.get(`http://localhost:3000/api/product_list`)
    const products = data
    return { products }
  },
  methods: {
    goToProduct(id) {
      this.$router.push({
        path: 'productPresentation',
        query: { id: id },
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
