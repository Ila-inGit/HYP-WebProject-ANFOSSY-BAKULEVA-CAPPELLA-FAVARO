<!--
  page of a single product
-->

<template>
  <div>
    <section-title :title="product.Title" :subtitle="product.Long" />
    <related-items-preview
      :parent-id="product.ID"
      :parent-type="'product'"
      :child-type="'area'"
      :title="'More about this area'"
      :show-video="true"
    />
    <related-items-preview
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
import RelatedItemsPreview from '~/components/RelatedItemsPreview.vue'

export default {
  components: { SectionTitle, RelatedItemsPreview },
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
