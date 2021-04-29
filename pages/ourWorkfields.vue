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
        <mini-area
          :title="'Area title first'"
          :description="'Description for the first'"
        ></mini-area>
      </div>
      <div class="mini-area">
        <mini-area
          :title="'Area title second'"
          :description="'Description for the second'"
        ></mini-area>
      </div>
      <div class="mini-area">
        <mini-area
          :title="'Area title third'"
          :description="'Description for the third'"
        ></mini-area>
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
