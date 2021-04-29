<template>
  <div class="mini-area">
    <div class="card">
      <h3>{{ title }}</h3>
      <p>{{ description }}</p>
      <button-with-text :title="'Learn more'"></button-with-text>
    </div>
  </div>
</template>

<script>
import ButtonWithText from '~/components/ButtonWithText.vue'
export default {
  components: {
    ButtonWithText,
  },
  props: {
    title: {
      type: String,
      default: () => '',
    },
    description: {
      type: String,
      default: () => '',
    },
  },
}
</script>

<style scoped>
.card {
  padding: 20px 10px;
  text-align: center;
}

h3 {
  margin-bottom: 10px;
}

p {
  height: 60px;
}
</style>
