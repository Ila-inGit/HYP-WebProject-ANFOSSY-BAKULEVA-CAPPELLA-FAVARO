<template>
  <div class="card">
    <div class="card-info">
      <h1>{{ people.title }}</h1>
      <p>{{ people.position }}</p>
    </div>
    <div>
      <img :src="people.image" alt="people image" class="imageCard" />
      <nuxt-link
        :to="{
          path: $route.path + '/presentation',
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
// import ButtonWithText from '~/components/ButtonWithText'
export default {
  components: {
    // ButtonWithText,
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
    textColor: { type: String, default: () => '#131212' },
  },
}
</script>

<style scoped>
.card {
  display: flex;
  height: auto;
  width: auto;
  padding: 1% 5%;
  border: solid #999;
  border-radius: 10px;
  flex-direction: row;
  justify-content: space-between;
  margin: 1%;
}

h1 {
  text-align: left;
  pointer-events: none;
  color: black !important;
}

p {
  text-align: left;
  pointer-events: none;
  color: black !important;
}

.card-info {
  display: flex;
  flex-direction: column;
  height: auto;
  pointer-events: none;
}

.imageCard {
  height: 20vh;
  width: auto;
}

.button-with-text {
  width: auto;
  height: auto;
  position: relative;
  top: 10px;
  pointer-events: all;
}
</style>
