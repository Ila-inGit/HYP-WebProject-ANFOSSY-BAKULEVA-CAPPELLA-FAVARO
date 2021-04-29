<template>
  <div class="mini-area">
    <div class="card">
      <div class="flex-box">
        <h3>{{ title }}</h3>
        <img class="mini-image" :src="image" alt="alternatetext" />
      </div>
      <p>{{ description }}</p>
      <div class="flex-box2">
        <button-with-text :title="'Learn more'"></button-with-text>
      </div>
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
    image: {
      type: String,
      default: () =>
        'https://www.stoneycreekwinepress.com/assets/images/labels/large/medium-square.png',
    },
  },
}
</script>

<style scoped>
.card {
  padding: 20px 10px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3);
}
.card:hover {
  box-shadow: 0 4px 8px 0 #00597743;
}
.flex-box {
  display: flex;
  justify-content: space-between;
}
.flex-box2 {
  display: flex;
  justify-content: flex-end;
}
.mini-image {
  width: 128px;
  height: 128px;
}
h3 {
  margin-bottom: 10px;
}

p {
  height: 60px;
}
</style>
