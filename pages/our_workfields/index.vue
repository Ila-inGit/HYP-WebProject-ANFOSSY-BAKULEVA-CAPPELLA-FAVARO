<!--
  page with the list of areas
-->

<template>
  <main class="container">
    <section-title
      :title="'Our workfields'"
      :subtitle="'very little description of our workfields'"
    />
    <intro-card
      v-for="area in areas"
      :key="area.id"
      :item="area"
      @click="goToArea(area.id)"
    />
  </main>
</template>

<script>
// import axios from 'axios'
import db from 'static/fake_db.json'
import SectionTitle from '~/components/SectionTitle.vue'
import IntroCard from '~/components/IntroCard.vue'
export default {
  components: {
    SectionTitle,
    IntroCard,
  },
  layout: 'PageLayout',
  data() {
    return { areas: db.areas }
  },
  methods: {
    goToArea(id) {
      this.$router.push({ path: this.$route.path + '/area', query: { id: id } })
    },
  },

  // async asyncData({ $axios }) {
  //   const { data } = await $axios.get(`${process.env.BASE_URL}/api/articles`)
  //   const articles = data
  //   return {
  //     articles,
  //   }
  // },
}
</script>
