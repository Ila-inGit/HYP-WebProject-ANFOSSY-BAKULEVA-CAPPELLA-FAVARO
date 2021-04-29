<template>
  <div class="flex-box">
    <div class="title-card">
      <h1>
        {{ title }}
      </h1>
      <h2>
        {{ subtitle }}
      </h2>
    </div>
    <!-- <img class="title-image" :src="image" alt="alternatetext" /> -->
    <card-with-carousel></card-with-carousel>
  </div>
</template>

<script>
import CardWithCarousel from '~/components/carousel/CardWithCarousel'
export default {
  components: {
    CardWithCarousel,
  },
  props: {
    title: {
      type: String,
      default: () => '',
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
  },
}
</script>
<style scoped>
h1 {
  color: aliceblue;
  padding-left: 10px;
}
h2 {
  color: aliceblue;
  font-style: italic;
  padding-left: 20px;
}

.title-card {
  padding: 10px;
  align-self: auto;
  text-align: start;
}
.title-image {
  width: 200px;
  height: 200px;
  padding: 10px;
}
.flex-box {
  display: flex;
  justify-content: space-between;
  background-color: rgb(15, 15, 15);
  border-radius: 4px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3);
}
</style>
