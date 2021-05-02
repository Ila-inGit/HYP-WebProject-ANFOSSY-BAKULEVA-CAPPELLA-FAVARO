<!--
  page with the list of areas
-->

<template>
  <main class="container">
    <div>
      <section-title
        :title="'Our workfields'"
        :subtitle="'very little description of our workfields'"
      ></section-title>
    </div>
    <section v-for="area in areas" :key="area.id" class="areas-grid">
      <div class="mini-area" @click="goToArea(area.id)">
        <mini-area :title="area.title" :description="area.description">
        </mini-area>
      </div>
    </section>
  </main>
</template>

<script>
// import axios from 'axios'
import db from 'static/fake_db.json'

import MiniArea from '~/components/ourWorkfields/MiniArea.vue'
import SectionTitle from '~/components/SectionTitle.vue'
export default {
  components: {
    MiniArea,
    SectionTitle,
  },
  layout: 'PageLayout',
  data() {
    return { areas: db.areas }
  },
  methods: {
    goToArea(id) {
      this.$router.push({ path: 'area', query: { areaId: id } })
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

<style scoped>
.areas-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(500px, 3fr));
  grid-auto-rows: auto;
  gap: 10px;
  padding: 5px;
  margin-top: 10px;
}

.mini-area {
  border-radius: 4px;
  padding: 0.4rem;
}
.mini-area:hover {
  color: #008cba;
}
</style>
