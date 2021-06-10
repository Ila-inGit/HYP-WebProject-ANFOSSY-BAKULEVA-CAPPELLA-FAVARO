<!--
  page with the list of areas
-->

<template>
  <div>
    <SectionTitle
      :title="'Our areas'"
      :subtitle="'Find out about our areas of expertise'"
    />
    <div class="table">
      <intro-card
        v-for="area in areas"
        :key="area.ID"
        :title="area.Title"
        :description="area.Short"
        :image="area.Image"
        @click="goToArea(area.ID)"
      />
    </div>
  </div>
</template>

<script>
import axios from 'axios'
import SectionTitle from '~/components/SectionTitle.vue'
import IntroCard from '~/components/IntroCard.vue'
export default {
  components: {
    SectionTitle,
    IntroCard,
  },
  layout: 'PageLayout',
  async asyncData() {
    const { data } = await axios.get(`${process.env.BASE_URL}/api/area_list`)
    const areas = data
    return { areas }
  },
  methods: {
    goToArea(id) {
      this.$router.push({ path: `${this.$route.path}/${id}` })
    },
  },
}
</script>
<style scoped>
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
