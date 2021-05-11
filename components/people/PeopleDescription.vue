<template>
  <div class="card">
    <div>
      <nuxt-link
        :to="{
          path: $route.path + '/person',
          query: { peopleId: people.id - 1 },
        }"
      >
        <div class="previous-button">
          <button-with-text class="border-previous" :title="'Previous'" />
        </div>
      </nuxt-link>
    </div>
    <nuxt-link
      :to="{
        path: $route.path + '/person',
        query: { peopleId: people.id + 1 },
      }"
    >
      <div class="next-button">
        <button-with-text class="border-next" :title="'Next'" />
      </div>
    </nuxt-link>
    <img :src="people.image" alt="people image" class="imageCard" />
    <div class="card-info">
      <h1>
        <b>{{ people.title }}</b>
      </h1>
      <h2>{{ people.position }}</h2>
      <h2>{{ people.description }}</h2>
      <nuxt-link
        :to="{
          path: $route.path + '/person',
          query: { peopleId: people.id },
        }"
      >
        <div class="button-with-text">
          <button-with-text :title="'See more'" />
        </div>
      </nuxt-link>
    </div>
  </div>
</template>

<script>
import ButtonWithText from '~/components/ButtonWithText'
export default {
  components: {
    ButtonWithText,
  },
  props: {
    relatedItems: {
      type: Array,
      default: () => [],
    },
    people: {
      id: {
        type: String,
        default: () => '',
      },
      title: {
        type: String,
        default: () => '',
      },
      description: {
        type: String,
        default: () => '',
      },
      contacts: {
        type: String,
        default: () => '',
      },
      position: {
        type: String,
        default: () => '',
      },
      image: {
        type: String,
        default: () => '',
      },
    },
    bgColor: { type: String, default: () => '#fdfdfd' },
    textColor: { type: String, default: () => '#000000' },
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

<style scoped>
.card {
  display: flex;
  height: 500px;
  width: auto;
  padding: 1% 5%;
  border: solid #999;
  border-radius: 10px;
  flex-direction: row;
  justify-content: space-between;
  pointer-events: none;
  margin: 1%;
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

.card-info {
  position: relative;
  left: -300px;
  top: -30px;
  display: flex;
  flex-direction: column;
  margin-top: auto;
  height: auto;
}

.imageCard {
  height: 30vh;
  width: auto;
  left: -60px;
  margin: auto;
}

.button-with-text {
  width: auto;
  height: auto;
  position: relative;
  left: 50px;
  top: 3px;
  pointer-events: all;
}

.border-next {
  border-right: white;
}

.border-previous {
  border-left: white;
}

.previous-button {
  width: 150px;
  height: 50px;
  position: relative;
  float: left;
  pointer-events: all;
}

.previous-button:after,
.previous-button:before {
  left: 100%;
  top: 50%;
  border: solid transparent;
  content: ' ';
  height: 0;
  width: 0;
  position: absolute;
}

.previous-button:after {
  border-color: rgba(62, 153, 212, 0);
  border-width: 16px;
  margin-top: -18px;
  margin-left: -141px;
  border-top: 28px solid transparent;
  border-bottom: 27px solid transparent;
  border-right: 28px solid #008cba;
}

.next-button {
  width: 150px;
  height: 50px;
  right: 10%;
  position: absolute;
  pointer-events: all;
}

.next-button:after,
.next-button:before {
  left: 100%;
  top: 50%;
  border: solid transparent;
  content: ' ';
  height: 0;
  width: 0;
  position: absolute;
}

.next-button:after {
  border-color: rgba(62, 153, 212, 0);
  border-left: 28px solid #008cba;
  margin-top: -18px;
  border-top: 28px solid transparent;
  border-bottom: 27px solid transparent;
}
</style>
