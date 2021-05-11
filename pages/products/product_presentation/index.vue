<!--
  page of a single product
-->

<template>
  <div>
    <section-title :title="product.title" :subtitle="product.description" />
    <card-with-video
      :child-ids="product.areas"
      :child-type="'area'"
      :title="'More about this area'"
    />
    <card-without-video
      :child-ids="product.people"
      :child-type="'people'"
      :title="'People involved'"
    />
  </div>
</template>

<script>
import db from 'static/fake_db.json'
import SectionTitle from '~/components/SectionTitle.vue'
import CardWithVideo from '~/components/CardWithVideo.vue'

export default {
  components: { SectionTitle, CardWithVideo },
  layout: 'PageLayout',

  data() {
    let product = {
      title: "Please, don't play with URLs...",
      descrpition: '',
      image: '',
    }
    db.products.forEach((element) => {
      if (element.id === this.$router.currentRoute.query.id) {
        product = element
      }
    })
    return { product: product }
  },
}
</script>
