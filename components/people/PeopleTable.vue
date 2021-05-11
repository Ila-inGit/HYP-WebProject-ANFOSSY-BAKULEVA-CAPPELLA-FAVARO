<template>
  <div class="grid-container">
    <div v-for="it in items" :key="it.id" class="relate">
      <people-card :people="it" :related-items="items" />
    </div>
  </div>
</template>

<script>
import db from '~/static/fake_db.json'
import PeopleCard from '~/components/people/PeopleCard'

export default {
  components: {
    PeopleCard,
  },
  data() {
    const items = db.people
    return { items: items }
  },
}
</script>

<style scoped>
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  grid-gap: 10px;
  background-color: #fdfdfd;
  padding: 10px;
}

.grid-container > div {
  background-color: rgba(255, 255, 255, 0.8);
  text-align: center;
  padding: 20px 0;
  font-size: 30px;
  border-color: white;
  border-width: 10px;
}
</style>
