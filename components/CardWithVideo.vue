<template>
  <div class="flex-box" :style="style">
    <iframe
      width="420"
      height="315"
      src="https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1&mute=1"
    >
    </iframe>

    <div>
      <h1>{{ title }}</h1>
    </div>
    <div class="prod-card">
      <h3>Prod</h3>
      <h4>Descriprion</h4>
      <button-with-text :title="'Learn more'"></button-with-text>
    </div>

    <div class="prod-card">
      <h3>Prod</h3>
      <h4>Descriprion</h4>
      <button-with-text :title="'Learn more'"></button-with-text>
    </div>
  </div>
</template>

// todo a for for each prod/component
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
    bgColor: {
      type: String,
      default: () => '#0f0f0f',
    },
    textColor: {
      type: String,
      default: () => '#f0f844',
    },
    image: {
      type: String,
      default: () =>
        'https://www.stoneycreekwinepress.com/assets/images/labels/large/medium-square.png',
    },
  },
  computed: {
    style() {
      return {
        'background-color': this.bgColor,
        color: this.textColor,
      }
    },
  },
}
</script>

<style scoped>
.flex-box {
  display: flex;
  justify-content: flex-start;
}
iframe {
  padding: 20px;
  border: transparent;
}
.prod-card {
  padding-left: 30px;
  padding-right: 30px;
  align-self: center;
}
h1 {
  padding-left: 20px;
}
</style>
