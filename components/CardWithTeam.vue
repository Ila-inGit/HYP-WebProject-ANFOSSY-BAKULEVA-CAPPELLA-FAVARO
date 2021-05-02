<template>
  <div class="flex-box" :style="style">
    <div>
      <h1>{{ title }}</h1>
    </div>

    <img class="mini-image" :src="image" alt="alternatetext" />
    <div class="team-card">
      <h3>Team Member X</h3>

      <h4>Descriprion</h4>

      <button-with-text :title="'Learn more'"></button-with-text>
    </div>

    <img class="mini-image" :src="image" alt="alternatetext" />
    <div class="team-card">
      <h3>Team Member Y</h3>
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

.team-card {
  padding-left: 20px;
  padding-right: 40px;
  padding-top: 50px;
  align-self: center;
}
.mini-image {
  width: 128px;
  height: 128px;
  padding-left: 60px;
  padding-top: 70px;
  padding-bottom: 40px;
}
h1 {
  padding-left: 20px;
}
</style>
