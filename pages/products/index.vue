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
    <div class="table">
      <intro-card
        v-for="product in products"
        :key="product.ID"
        :title="product.Title"
        :description="product.Short"
        :image="product.Image"
        @click="goToProduct(product.ID)"
      />
    </div>
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
        path: `${this.$route.path}/${id}`,
      })
    },
  },
}
</script>

<style>
.div {
  width: 100%;
}
.table {
  display: flex;
  width: 100%;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-evenly;
  align-items: stretch;
  padding-top: 2.5%;
  padding-bottom: 2.5%;
}
</style>
