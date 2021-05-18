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
    <div class="person-card">
      <div class="img-and-desc">
        <h1>
          <b>{{ person.Name }}</b>
        </h1>
        <h2 style="text-align: center">{{ person.Role }}</h2>
        <img :src="person.Picture" alt="person image" class="imageCard" />
        <p>
          <b>{{ person.Bio }}</b>
        </p>
      </div>
      <div class="card-info">
        <related-items-small-preview
          :parent-id="person.ID"
          :title="'Working area'"
          :parent-type="'person'"
          :child-type="'area'"
          :bg-color="'#ffffff'"
          :text-color="'#000000'"
        />
        <related-items-small-preview
          :parent-id="person.ID"
          :title="'Developed products'"
          :parent-type="'person'"
          :child-type="'product'"
          :bg-color="'#ffffff'"
          :text-color="'#000000'"
        />
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
        path: `${this.$route.path}`,
        query: { id: id },
      })
    },
  },
}
</script>

<style scoped>
.person-card {
  height: 85vh;
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
}

.img-and-desc {
  display: flex;
  flex-direction: column;
  align-items: center;
  flex-wrap: nowrap;
  max-width: 20vw;
  height: 100%;
  background: #dddddd;
}

h1 {
  text-align: left;
  color: black !important;
}

h2 {
  text-align: left;
  margin: 15px;
  padding: 0;
  color: black !important;
}

p {
  text-align: center;
  font-style: normal;
  font-size: 100%;
  font-size-adjust: initial;
  margin: 0;
  padding: 0;
  color: black !important;
}
.card {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
}

.card-info {
  display: inline-flex;
  flex-direction: column;
  align-items: normal;
  margin: 0;
  padding: 0;
}

.imageCard {
  height: 35vh;
  width: auto;
  margin: 10%;
}

.button-with-text {
  width: auto;
  height: auto;
  position: relative;
}
</style>
