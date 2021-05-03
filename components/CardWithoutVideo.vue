<!--
> displays a list of items passed as props
-->
<template>
  <div class="flex-box" :style="style">
    <div>
      <h1>{{ title }}</h1>
    </div>
    <related-items-preview :related-items="items" />
  </div>
</template>

// todo a for for each prod/component
<script>
import db from 'static/fake_db.json'
import RelatedItemsPreview from './RelatedItemsPreview.vue'
export default {
  components: { RelatedItemsPreview },
  props: {
    // ids of the items to display
    childIds: {
      type: Array,
      default: () => [],
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
  data() {
    const items = []
    let candidates = []
    if (this.childType === 'people') {
      candidates = db.people
    } else if (this.childType === 'product') {
      candidates = db.products
    } else if (this.childType === 'area') {
      candidates = db.areas
    }
    candidates.forEach((element) => {
      if (this.childIds.includes(element.id)) {
        items.push(element)
      }
    })
    return { items: items }
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
