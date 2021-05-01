<template>
  <div>
    <info-container
      v-bind:title="product.title"
      v-bind:description="product.longDescription"
    />
  </div>
</template>

<script>
import db from 'static/fake_db.json'

export default {
  layout: 'PageLayout',

  data() {
    let product = {
      title: "Please, don't play with URLs...",
      descrpition: '',
      image: '',
    }
    db.forEach((element) => {
      if (element.id === this.$router.currentRoute.query.productId) {
        product = element
      }
    })
    return { product: product }
  },
}
</script>
