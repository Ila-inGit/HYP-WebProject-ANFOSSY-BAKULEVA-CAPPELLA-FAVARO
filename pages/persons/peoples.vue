<!--
  page with list of products
-->

export
<template>
  <div>
    <SectionTitle
      :title="'People'"
      :subtitle="'Meet the people behind all this work for you to improve your business.'"
    />
    <intro-card
      v-for="people in peoples"
      :key="people.id"
      :product="people"
      @click="goToPeople(people.id)"
    />
  </div>
</template>

<script>
import db from 'static/fake_db.json'
import introCard from '~/components/IntroCard'

export default {
  components: {
    introCard,
  },
  layout: 'PageLayout',

  data() {
    return { peoples: db.people }
  },
  methods: {
    goToPeople(id) {
      this.$router.push({
        path: 'person',
        query: { peopleId: id },
      })
    },
  },
}
</script>

<style></style>
