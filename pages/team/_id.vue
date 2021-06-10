<template>
  <div>
    <SectionTitle :title="'Meet the team'" />
    <div class="box">
      <div class="box-full short">
        <!-- go to previous person -->
        <nuxt-link
          class="previous-button"
          :to="{
            path: `${$route.path.substr(0, $route.path.lastIndexOf('/'))}/${
              person.ID - 1
            }`,
          }"
        >
          <div>
            <button-with-text
              v-if="person.ID - 1 !== 0"
              class="border-previous"
              :title="'Previous'"
            />
          </div>
        </nuxt-link>
        <!-- go to next person -->
        <nuxt-link
          class="next-button"
          :to="{
            path: `${$route.path.substr(0, $route.path.lastIndexOf('/'))}/${
              person.ID + 1
            }`,
          }"
        >
          <div>
            <button-with-text
              v-if="person.ID + 1 !== 21"
              class="border-next"
              :title="'Next'"
            />
          </div>
        </nuxt-link>
        <h1>Team member</h1>
        <h5>{{ person.Name }}</h5>
        <div>
          <img :src="person.Picture" alt="person-picture" :border="0" />
        </div>
        <h1>Role</h1>
        <h5>{{ person.Role }}</h5>
        <h1>Bio</h1>
        <h5>{{ person.Bio }}</h5>
      </div>
      <div class="box-full">
        <related-items-preview
          :title="'Working area'"
          :parent-id="person.ID"
          :parent-type="'person'"
          :child-type="'area'"
          :bg-color="'#dddddd'"
          :text-color="'#000000'"
        />
        <related-items-preview
          :parent-id="person.ID"
          :title="'Developed products'"
          :parent-type="'person'"
          :child-type="'product'"
          :bg-color="'#ffffff'"
          :text-color="'#000000'"
        />
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  layout: 'PageLayout',
  async asyncData({ route }) {
    const { id } = route.params
    const { data } = await axios.get(`${process.env.BASE_URL}/api/person/${id}`)
    const person = data
    return { person }
  },
  watch: {
    $route(n) {
      this.$router.go(n)
    },
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

<style scoped>
h1 {
  align-self: center;
  text-align: center;
  font-size: x-large;
  margin: auto;
  border-bottom: 1px solid #403d3d;
  color: #202021;
  padding-bottom: 8px;
  text-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

h5 {
  font-size: large;
}

.box {
  margin: auto;
  width: 1500px;
  text-align: center;
  align-self: center;
  align-content: center;
  padding: 2.5% 0;
}

.box-full {
  margin: auto;
  text-align: center;
  align-self: center;
  align-content: center;
  align-items: center;
  padding-right: 2.5%;
}

@media screen and (min-width: 1000px) {
  .short {
    width: 100vw;
  }
}

.column {
  margin: auto;
  width: 100%;
  text-align: center;
  align-self: center;
  align-content: center;
}
@media screen and (max-width: 600px) {
  .box {
    width: 100%;
  }
}
@media screen and (min-width: 600px) and (max-width: 1000px) {
  .box {
    width: 90%;
  }
}
@media screen and (min-width: 1000px) {
  .box {
    display: flex;
    width: 80%;
    align-items: stretch;
  }
}

img {
  margin: 5px;
  width: 30vw;
  align-self: center;
  border: black solid 2px;
}

@media screen and (max-width: 600px) {
  img {
    width: 40vw;
  }
}
@media screen and (min-width: 600px) and (max-width: 1000px) {
  img {
    width: 40vw;
    border-radius: 40vw;
  }
}
@media screen and (min-width: 1000px) {
  img {
    width: 10vw;
    border-radius: 10vw;
  }
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
.previous-button {
  float: left;
  text-decoration: none;
  margin-top: -1.5vh;
}

.next-button {
  float: right;
  text-decoration: none;
  margin-top: -1.5vh;
}
</style>
