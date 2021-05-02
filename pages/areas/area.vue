<!--
  page of a single area
-->

<template>
  <main class="container">
    <div>
      <section-title
        :title="area.title"
        :subtitle="area.description"
        :bg-color="'#f0f8ff'"
        :text-color="'#0f0f0f'"
      ></section-title
      ><card-with-video
        :child-ids="area.products"
        :child-type="'product'"
        :bg-color="'#12253f'"
        :text-color="'#f0f8ff'"
        :title="'Products in this area'"
      ></card-with-video>
      <card-without-video
        :child-ids="area.people"
        :child-type="'people'"
        :bg-color="'#1e0045'"
        :text-color="'#f0f8ff'"
        :title="'Working Team'"
      ></card-without-video>
    </div>
  </main>
</template>

<script>
import db from 'static/fake_db.json'
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
  data() {
    let area = {
      title: "Please, don't play with URLs...",
      descrpition: '',
      image: '',
    }
    db.areas.forEach((element) => {
      if (element.id === this.$router.currentRoute.query.areaId) {
        area = element
      }
    })
    return { area: area }
  },
}
</script>

<style></style>
