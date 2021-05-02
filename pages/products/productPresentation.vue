<!--
  page of a single product
-->

<template>
  <div>
    <section-title :title="product.title" :subtitle="product.description" />
  </div>
</template>

<script>
import db from 'static/fake_db.json'
import SectionTitle from '~/components/SectionTitle.vue'

export default {
  components: { SectionTitle },
  layout: 'PageLayout',

  data() {
    let product = {
      title: "Please, don't play with URLs...",
      descrpition: '',
      image: '',
    }
    db.products.forEach((element) => {
      if (element.id === this.$router.currentRoute.query.productId) {
        product = element
      }
    })
    return { product: product }
  },
}
</script>
