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
      :key="product.ID"
      :title="product.Title"
      :description="product.Short"
      :image="product.Image"
      @click="goToProduct(product.ID)"
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
    const { data } = await axios.get(`${process.env.BASE_URL}/api/product_list`)
    const products = data
    return { products }
  },
  methods: {
    goToProduct(id) {
      this.$router.push({
        path: this.$route.path + '/product_presentation',
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
