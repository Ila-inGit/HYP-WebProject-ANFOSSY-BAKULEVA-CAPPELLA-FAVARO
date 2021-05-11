<!--
  page of a single area
-->

<template>
  <main class="container">
    <div>
      <section-title
        :title="area.Title"
        :subtitle="area.Long"
        :bg-color="'#f0f8ff'"
        :text-color="'#0f0f0f'"
      ></section-title
      ><card-with-video
        :parent-id="area.ID"
        :parent-type="'area'"
        :child-type="'product'"
        :bg-color="'#12253f'"
        :text-color="'#f0f8ff'"
        :title="'Products in this area'"
      ></card-with-video>
      <card-without-video
        :parent-id="area.ID"
        :parent-type="'area'"
        :child-type="'person'"
        :bg-color="'#1e0045'"
        :text-color="'#f0f8ff'"
        :title="'Working Team'"
      ></card-without-video>
    </div>
  </main>
</template>

<script>
import axios from 'axios'
import SectionTitle from '~/components/SectionTitle.vue'
import CardWithVideo from '~/components/CardWithVideo.vue'
import CardWithoutVideo from '~/components/CardWithoutVideo.vue'
export default {
  components: {
    SectionTitle,
    CardWithVideo,
    CardWithoutVideo,
  },
  layout: 'PageLayout',
  props: {
    title: {
      type: String,
      default: () => '',
    },
    description: {
      type: String,
      default: () => '',
    },
    image: {
      type: String,
      default: () =>
        'https://www.stoneycreekwinepress.com/assets/images/labels/large/medium-square.png',
    },
  },
  async asyncData({ route }) {
    const { id } = route.query
    const { data } = await axios.get(`${process.env.BASE_URL}/api/area/${id}`)
    const area = data
    return { area }
  },
}
</script>

<style></style>
