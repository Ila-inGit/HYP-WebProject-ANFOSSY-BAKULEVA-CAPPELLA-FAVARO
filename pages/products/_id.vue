<!--
  page of a single product
-->

<template>
  <div>
    <SectionTitle
      :title="product.Title"
      :subtitle="product.Long"
      image="/hexTech.jpg"
      :need-space="true"
    />
    <div class="row-of-side-columns">
      <related-items-preview
        :parent-id="product.ID"
        :parent-type="'product'"
        :child-type="'area'"
        :title="'More about this area'"
        :show-video="false"
      />
      <related-items-preview
        :parent-id="product.ID"
        :parent-type="'product'"
        :child-type="'person'"
        :title="'People involved'"
      />
    </div>
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
    const { id } = route.params
    const { data } = await axios.get(
      `${process.env.BASE_URL}/api/product/${id}`
    )
    const product = data
    if (product.Bio) product.Long = product.Bio
    return { product }
  },
}
</script>

<style>
@import '~/assets/style.css';

.column {
  width: -webkit-fill-available;
}
</style>
