<!--
  page with list of people
-->

export
<template>
  <div>
    <SectionTitle
      :title="'People'"
      :subtitle="'Meet the people behind all this work for you to improve your business'"
    />
    <div class="grid-container">
      <intro-card
        v-for="person in people"
        :key="person.ID"
        :title="person.Name"
        :description="person.Role"
        :image="person.Picture"
        @click="goToPerson(person.ID)"
      />
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  layout: 'PageLayout',
  async asyncData() {
    const { data } = await axios.get(`${process.env.BASE_URL}/api/person_list`)
    const people = data
    return { people }
  },
  methods: {
    goToPerson(id) {
      this.$router.push({
        path: `${this.$route.path}/presentation`,
        query: { id: id },
      })
    },
  },
}
</script>

<style>
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  grid-gap: 10px;
  background-color: #fdfdfd;
  padding: 10px;
}
</style>
