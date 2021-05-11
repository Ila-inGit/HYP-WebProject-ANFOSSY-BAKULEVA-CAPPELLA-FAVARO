<!--
> displays a list of items passed as props
-->
<template>
  <div class="flex-box" :style="style">
    <div>
      <h1>{{ title }}</h1>
    </div>
    <related-items-preview
      :parent-id="parentId"
      :parent-type="parentType"
      :child-type="childType"
    />
  </div>
</template>

// todo a for for each prod/component
<script>
import RelatedItemsPreview from './RelatedItemsPreview.vue'
export default {
  components: { RelatedItemsPreview },
  props: {
    parentId: {
      type: Number,
      default: () => 0,
    },
    parentType: {
      type: String,
      default: () => '',
    },
    // people, area, or product
    childType: {
      type: String,
      default: () => '',
    },
    bgColor: {
      type: String,
      default: () => '#0f0f0f',
    },
    textColor: {
      type: String,
      default: () => '#ffffff',
    },
    // title of the section
    title: {
      type: String,
      default: () => '',
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
.flex-box {
  display: flex;
  justify-content: flex-start;
  flex-direction: column;
}

.team-card {
  padding-left: 20px;
  padding-right: 40px;
  padding-top: 50px;
  align-self: center;
}
.mini-image {
  width: 128px;
  height: 128px;
  padding-left: 60px;
  padding-top: 70px;
  padding-bottom: 40px;
}
h1 {
  padding-left: 20px;
}
</style>
