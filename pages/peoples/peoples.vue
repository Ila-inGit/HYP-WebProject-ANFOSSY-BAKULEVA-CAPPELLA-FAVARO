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
    <card-carousel />
  </div>
</template>

<script>
import db from 'static/fake_db.json'
import cardCarousel from '~/components/people/PeopleCardCarousel'

export default {
  components: {
    cardCarousel,
  },
  layout: 'PageLayout',

  data() {
    return { peoples: db.people }
  },
  methods: {
    goToPeople(id) {
      this.$router.push({
        path: 'people',
        query: { peopleId: id },
      })
    },
  },
}
</script>

<style></style>
