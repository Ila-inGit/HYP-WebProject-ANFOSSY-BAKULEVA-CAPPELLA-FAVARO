<template>
  <div class="flex-box" :style="style">
    <div class="row">
      <div class="small-column">
        <h1>{{ title1 }}</h1>
        <h2>{{ description }}</h2>
      </div>
      <div class="column">
        <h1>{{ title }}</h1>
        <related-items-preview :related-items="items" />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    title1: { type: String, default: () => '' },
    description: { type: String, default: () => '' },
    title: { type: String, default: () => '' },
    bgColor: { type: String, default: () => '#0f0f0f' },
    image: {
      type: String,
      default: () =>
        'https://www.stoneycreekwinepress.com/assets/images/labels/large/medium-square.png',
    },
    textColor: { type: String, default: () => '#f0f844' },
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
  flex-direction: row;
  background-color: background-color;
  text-emphasis-color: color;
}

.row {
  display: flex;
}

.column {
  width: 90%;
  display: flex;
  flex-direction: column;
  align-items: stretch;
}

.small-column {
  width: 30%;
  display: flex;
  flex-direction: column;
  align-items: stretch;
}

iframe {
  padding: 20px;
  border: transparent;
}

h1 {
  padding-left: 10px;
}
h2 {
  font-style: italic;
  padding-left: 20px;
}
</style>
