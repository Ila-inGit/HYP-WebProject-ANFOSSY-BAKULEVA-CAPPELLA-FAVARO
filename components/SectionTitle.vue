<!--
  title of the section + short description of it
-->
<template>
  <div class="flex-box" :style="style">
    <div class="title-card">
      <h1>
        {{ title }}
      </h1>
      <h2>
        {{ subtitle }}
      </h2>
    </div>
    <card-with-carousel></card-with-carousel>
  </div>
</template>

<script>
import CardWithCarousel from '~/components/Carousel/CardWithCarousel'
export default {
  components: {
    CardWithCarousel,
  },
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
      default: () => '#0f0f0f',
    },
    textColor: {
      type: String,
      default: () => '#f0f8ff',
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
h2 {
  font-style: italic;
}

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
