<!--
  page with list of people
-->

export
<template>
  <div>
    <SectionTitle
      :title="'Our team'"
      :subtitle="'Meet the people behind all this work for you to improve your business'"
      image="/team.jpg"
    />
    <div class="table">
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
        path: `${this.$route.path}/${id}`,
      })
    },
  },
}
</script>

<style>
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
