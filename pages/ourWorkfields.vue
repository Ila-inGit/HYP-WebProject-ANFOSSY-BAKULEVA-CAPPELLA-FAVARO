<template>
  <main class="container">
    <div>
      <section-title
        :title="'Our workfields'"
        :subtitle="'very little description of our workfields'"
      ></section-title>
    </div>
    <section class="areas-grid">
      <div class="mini-area">
        <mini-area></mini-area>
      </div>
      <div class="mini-area">
        <mini-area></mini-area>
      </div>
      <div class="mini-area">
        <mini-area></mini-area>
      </div>
    </section>
  </main>
</template>

<script>
// import axios from 'axios'
import MiniArea from '~/components/ourWorkfields/MiniArea.vue'
import SectionTitle from '~/components/SectionTitle.vue'
export default {
  components: {
    MiniArea,
    SectionTitle,
  },
  layout: 'PageLayout',
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
  grid-template-columns: repeat(auto-fill, minmax(400px, 3fr));
  grid-auto-rows: auto;
  gap: 10px;
  padding: 5px;
  margin-top: 10px;
}

.mini-area {
  cursor: pointer;
  border: 2px solid #e7e7e7;
  border-radius: 4px;
  padding: 0.4rem;
}
.mini-area:hover {
  color: rgb(36, 82, 207);
  border-color: rgb(36, 82, 207);
}
</style>
