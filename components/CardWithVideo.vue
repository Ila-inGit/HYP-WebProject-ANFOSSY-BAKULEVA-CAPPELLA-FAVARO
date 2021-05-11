<!--
> shows a video, a title of the section, and a list of items
-->

<template>
  <div class="flex-box" :style="style">
    <iframe
      width="420"
      height="315"
      src="https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1&mute=1"
    />
    <CardWithoutVideo
      :parent-id="parentId"
      :parent-type="parentType"
      :child-type="childType"
      :text-color="textColor"
      :title="title"
    />
  </div>
</template>

<script>
export default {
  props: {
    // ids of items to display
    parentId: {
      type: Number,
      default: 0,
    },
    parentType: {
      type: String,
      default: () => '',
    },
    // person, area, product
    childType: {
      type: String,
      default: () => '',
    },
    // title of the section
    title: { type: String, default: () => '' },
    bgColor: { type: String, default: () => '#000000' },
    textColor: { type: String, default: () => '#ffffff' },
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
