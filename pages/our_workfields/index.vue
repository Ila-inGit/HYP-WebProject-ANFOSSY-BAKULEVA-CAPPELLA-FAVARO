<!--
  page with the list of areas
-->

<template>
  <main class="container">
    <section-title
      :title="'Our workfields'"
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
  </main>
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
      this.$router.push({ path: this.$route.path + '/area', query: { id: id } })
    },
  },
}
</script>
<style scoped>
.table {
  display: grid;
  grid-template-columns: auto auto;
}
</style>
