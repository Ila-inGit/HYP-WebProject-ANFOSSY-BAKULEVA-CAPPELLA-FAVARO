<template>
  <div class="title-card">
    <h1>
      {{ title }}
    </h1>
    <h5>
      {{ subtitle }}
    </h5>
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
  },
}
</script>
<style scoped>
h1 {
  color: aliceblue;
  padding-left: 10px;
}
h5 {
  color: aliceblue;
  font-style: italic;
  padding-left: 20px;
}

.title-card {
  padding: 10px;
  border: 2px solid grey;
  border-radius: 4px;
  align-self: auto;
  text-align: start;
  background-color: rgb(15, 15, 15);
}
</style>
