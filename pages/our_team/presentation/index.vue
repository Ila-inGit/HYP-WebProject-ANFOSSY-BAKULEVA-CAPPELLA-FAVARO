<template>
  <div class="person-card">
    <div>
      <!-- go to previous person -->
      <nuxt-link
        :to="{
          path: `${$route.path}`,
          query: { id: person.ID - 1 },
        }"
      >
        <div class="previous-button">
          <button-with-text class="border-previous" :title="'Previous'" />
        </div>
      </nuxt-link>
    </div>

    <!-- show person info -->
    <div class="card">
      <img :src="person.Picture" alt="person image" class="imageCard" />
      <div class="card-info">
        <h1>
          <b>{{ person.Name }}</b>
        </h1>
        <h2>{{ person.Role }}</h2>
        <h2>{{ person.Bio }}</h2>
        <nuxt-link
          :to="{
            path: `${$route.path}/person`,
            query: { id: person.ID },
          }"
        >
          <div class="button-with-text">
            <button-with-text
              :title="'See more'"
              @click="goToPerson(person.ID)"
            />
          </div>
        </nuxt-link>
      </div>
    </div>
    <!-- go to next person -->
    <nuxt-link
      :to="{
        path: `${$route.path}`,
        query: { id: person.ID + 1 },
      }"
    >
      <div class="next-button">
        <button-with-text class="border-next" :title="'Next'" />
      </div>
    </nuxt-link>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  layout: 'PageLayout',
  async asyncData({ route }) {
    const { id } = route.query
    const { data } = await axios.get(`${process.env.BASE_URL}/api/person/${id}`)
    const person = data
    return { person }
  },
  methods: {
    goToPerson(id) {
      this.$router.push({
        path: `${this.$route.path}/person`,
        query: { id: id },
      })
    },
  },
}
</script>

<style scoped>
.person-card {
  height: 70vh;
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
}

h1 {
  text-align: left;
  color: black !important;
}

h2 {
  text-align: left;
  color: black !important;
}

p {
  text-align: left;
  font-style: normal;
  color: black !important;
}
.card {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
}

.card-info {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.imageCard {
  height: 40vh;
  width: auto;
  margin: 10%;
}

.button-with-text {
  width: auto;
  height: auto;
  position: relative;
}
</style>
