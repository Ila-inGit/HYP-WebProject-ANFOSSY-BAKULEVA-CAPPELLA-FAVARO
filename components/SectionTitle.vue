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
        vertical-align: top;
        filter: brightness(30%);
        width: 100%;
        object-fit: cover;
      "
    />
    <div
      class="w3-display-middle w3-padding-large w3-border w3-wide w3-text-light-grey w3-center light-text bar"
      style="border: 1px solid #ccc; position: absolute"
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

@media screen and (max-width: 600px) {
  .bar {
    top: 20%;
    left: 15%;
    width: 70%;
  }
  img {
    height: 40vh;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) and (max-height: 1000px) {
  .bar {
    top: 30%;
    left: 15%;
    width: 70%;
  }
  img {
    height: 60vh;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) and (min-height: 1000px) {
  .bar {
    top: 30%;
    left: 15%;
    width: 70%;
  }
  img {
    height: 30vh;
  }
}
@media screen and (min-width: 1000px) {
  .bar {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    padding: 12px 24px;
    border: 1px solid #ccc;
  }
}
</style>
