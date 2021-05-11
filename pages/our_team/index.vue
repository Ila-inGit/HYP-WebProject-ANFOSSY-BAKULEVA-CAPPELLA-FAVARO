<!--
  page with list of people
-->

export
<template>
  <div>
    <SectionTitle
      :title="'People'"
      :subtitle="'Meet the people behind all this work for you to improve your business.'"
    />
    <people-table />
  </div>
</template>

<script>
import db from 'static/fake_db.json'
import PeopleTable from '~/components/people/PeopleTable'

export default {
  components: {
    PeopleTable,
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
