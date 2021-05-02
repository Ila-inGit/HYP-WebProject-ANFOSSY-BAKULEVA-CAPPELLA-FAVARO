<template>
  <div class="flex-box" :style="style">
    <iframe
      width="420"
      height="315"
      src="https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1&mute=1"
    />
    <div class="column">
      <h1>{{ title }}</h1>
      <related-items-preview :related-items="items" />
    </div>
  </div>
</template>

<script>
import db from 'static/fake_db.json'

export default {
  props: {
    childIds: {
      type: Array,
      default: () => [],
    },
    childType: {
      type: String,
      default: () => '',
    },
    title: { type: String, default: () => '' },
    bgColor: { type: String, default: () => '#0f0f0f' },
    image: {
      type: String,
      default: () =>
        'https://www.stoneycreekwinepress.com/assets/images/labels/large/medium-square.png',
    },
    textColor: { type: String, default: () => '#f0f844' },
  },
  data() {
    const items = []
    if (this.childType === 'product') {
      // TODO other cases
      db.products.forEach((element) => {
        if (this.childIds.includes(element.id)) {
          items.push(element)
        }
      })
    }
    return { items: items }
  },
  computed: {
    style() {
      return { 'background-color': this.bgColor, color: this.textColor }
    },
  },
}
</script>

<style scoped>
.flex-box {
  display: flex;
  justify-content: flex-start;
  flex-direction: row;
  background-color: background-color;
  text-emphasis-color: color;
}

.column {
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
iframe {
  padding: 20px;
  border: transparent;
}
h1 {
  padding-left: 20px;
}
</style>
