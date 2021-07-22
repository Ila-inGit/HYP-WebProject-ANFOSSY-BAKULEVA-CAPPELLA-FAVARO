// i think it is not used
<template>
  <div class="flex-box">
    <h1>{{ title }}</h1>
    <br />
    <related-items-preview-without-img :related-items="items" />
  </div>
</template>

<script>
export default {
  props: {
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
  display: flex;
  justify-content: space-between;
  border-radius: 4px;
  box-shadow: 0 4px 8px 0 #0000004d;
}

iframe {
  padding: 20px;
  border: transparent;
}

.column {
  width: 100%;
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

h1 {
  padding-left: 10px;
  display: block;
}
h2 {
  font-style: italic;
  padding-left: 20px;
}
</style>
