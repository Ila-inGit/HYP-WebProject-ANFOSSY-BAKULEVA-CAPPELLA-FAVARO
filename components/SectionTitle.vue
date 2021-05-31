<!--
  title of the section + short description of it
-->
<template>
  <div
    class="w3-display-container w3-content w3-center"
    style="position: relative; text-align: center; z-index: -5"
  >
    <img
      class="w3-image"
      src="~/static/hexTech.jpg"
      alt="backgroundImageTech"
      style="
        max-width: 100%;
        height: auto;
        vertical-align: middle;
        filter: brightness(30%);
      "
      width="1500"
      height="600"
    />
    <div
      class="w3-display-middle w3-padding-large w3-border w3-wide w3-text-light-grey w3-center light-text"
      style="
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        padding: 12px 24px;
        border: 1px solid #ccc;
      "
    >
      <h1 class="w3-hide-medium w3-hide-small w3-xxxlarge">{{ title }}</h1>
      <h3 class="w3-hide-medium w3-hide-small">{{ subtitle }}</h3>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      default: () => 'Error',
    },
    subtitle: {
      type: String,
      default: () => '',
    },
    image: {
      type: String,
      default: () =>
        'https://www.stoneycreekwinepress.com/assets/images/labels/large/medium-square.png',
    },
    bgColor: {
      type: String,
      default: () => '#fff',
    },
    textColor: {
      type: String,
      default: () => '#0f0f0f',
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
@import '~/assets/style.css';

.title-card {
  padding: 2%;
  align-self: auto;
  text-align: start;
}
.flex-box {
  display: flex;
  justify-content: space-between;
}
</style>
