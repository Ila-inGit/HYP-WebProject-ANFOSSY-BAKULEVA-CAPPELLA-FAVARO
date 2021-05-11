<!--
  page of a single product
-->

<template>
  <div>
    <section-title :title="product.Title" :subtitle="product.Long" />
    <card-with-video
      :parent-id="product.ID"
      :parent-type="'product'"
      :child-type="'area'"
      :title="'More about this area'"
    />
    <card-without-video
      :parent-id="product.ID"
      :parent-type="'product'"
      :child-type="'person'"
      :title="'People involved'"
    />
  </div>
</template>

<script>
import axios from 'axios'
import SectionTitle from '~/components/SectionTitle.vue'
import CardWithVideo from '~/components/CardWithVideo.vue'

export default {
  components: { SectionTitle, CardWithVideo },
  layout: 'PageLayout',
  async asyncData({ route }) {
    const { id } = route.query
    const { data } = await axios.get(
      `${process.env.BASE_URL}/api/product/${id}`
    )
    const product = data
    if (product.Bio) product.Long = product.Bio
    return { product }
  },
}
</script>
