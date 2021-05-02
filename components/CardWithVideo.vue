<template>
  <div class="flex-box" :style="style">
    <iframe
      width="420"
      height="315"
      src="https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1&mute=1"
    >
    </iframe>
    <div class="column">
      <div>
        <h1>{{ title }}</h1>
      </div>
      <div class="row">
        <div v-for="prod in areaProducts" :key="prod.id" class="prod-card">
          <h3>{{ prod.title }}</h3>
          <h4>{{ prod.description }}</h4>
          <button-with-text :title="'Learn more'"></button-with-text>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import db from 'static/fake_db.json'
import ButtonWithText from '~/components/ButtonWithText.vue'
export default {
  components: {
    ButtonWithText,
  },
  props: {
    areaProductsIds: {
      type: Array,
      default: () => [],
    },
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
  data() {
    const products = []
    db.products.forEach((element) => {
      if (this.areaProductsIds.includes(element.id)) {
        products.push(element)
      }
    })
    return { areaProducts: products }
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
  display: flex;
  flex-direction: column;
  padding-left: 30px;
  padding-right: 30px;
  align-self: stretch;
  justify-content: space-between;
  width: 20%;
}
.column {
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
.row {
  display: flex;
  flex-direction: row;
}
h1 {
  padding-left: 20px;
}
</style>
