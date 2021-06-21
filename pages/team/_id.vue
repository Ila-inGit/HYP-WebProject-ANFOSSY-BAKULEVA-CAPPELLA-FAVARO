<template>
  <div>
    <SectionTitle :title="'Meet the team'" />
    <div class="box">
      <div class="box-full short">
        <div class="flex-box-pers">
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
          <h1>Team member</h1>
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
                style="padding-left: 20px; padding-right: 20px"
              />
            </div>
          </nuxt-link>
        </div>
        <div class="box-border">
          <h5>{{ person.Name }}</h5>
          <div>
            <img :src="person.Picture" alt="person-picture" :border="0" />
          </div>
        </div>
        <div class="flex-box-pers">
          <h1>Role</h1>
        </div>
        <div class="box-border">
          <h5>{{ person.Role }}</h5>
        </div>
        <div class="flex-box-pers">
          <h1>Bio</h1>
        </div>
        <div
          class="box-border"
          style="border-bottom-color: rgba(0, 0, 0, 0.198)"
        >
          <h5>{{ person.Bio }}</h5>
        </div>
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
@import '~/assets/style.css';

h1 {
  align-self: center;
  text-align: center;
  font-size: x-large;
  margin: auto;
  color: #202021;
  padding-bottom: 8px;
}

h5 {
  font-size: large;
  padding: 1%;
}

.box {
  margin: auto;
  display: flex;
  flex-direction: row;
  max-width: 95%;
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
  width: 95%;
}

.box-border {
  border-width: 3px;
  border-style: solid;
  border-image: linear-gradient(
      to bottom,
      rgba(82, 60, 60, 0),
      rgba(0, 0, 0, 0.335)
    )
    1 2%;
}

@media screen and (min-width: 1000px) {
  .short {
    max-width: 30%;
  }
}

.column {
  text-align: center;
  align-self: center;
  align-content: center;
}
@media screen and (max-width: 600px) {
  .box {
    display: flex;
    flex-direction: column;
  }
}
@media screen and (min-width: 600px) and (max-width: 1000px) {
  .box {
    display: flex;
    flex-direction: column;
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
}

.next-button {
  float: right;
  text-decoration: none;
}
.flex-box-pers {
  display: flex;
  justify-content: space-around;
  border-radius: 4px;
  padding: 3%;
  box-shadow: 0 4px 8px 0 #0000004d;
  border-bottom: 2px solid #403d3d;
}

/* @media screen and (min-width: 1000px) and (max-width: 1200px) {
  .flex-box-pers {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
  }
  .previous-button {
    order: 1;
  }
  .next-button {
    order: 2;
  }
  h1 {
    order: 3;
  }
} */
</style>
