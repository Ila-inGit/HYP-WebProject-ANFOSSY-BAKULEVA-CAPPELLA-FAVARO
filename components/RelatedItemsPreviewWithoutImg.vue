<!--
> shows the list of items passed as props
without image
-->
<template>
  <div class="row">
    <div v-for="it in relatedItems" :key="it.id" class="column">
      <div class="item-card">
        <div>
          <h3>{{ it.title }}</h3>
          <p>{{ it.description }}</p>
          <button-with-text
            :title="'Learn more'"
            @click.native="goToPage(it.id)"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import ButtonWithText from '~/components/ButtonWithText.vue'
export default {
  components: {
    ButtonWithText,
  },
  props: {
    // a list of items to display
    relatedItems: {
      type: Array[{ title: String, description: String, image: String }],
      default: () => [],
    },
    // the type of the elements passed (people, area, product)
    itemType: {
      type: String,
      default: () => '',
    },
  },
  methods: {
    goToPage(id) {
      let url = '/'
      if (this.itemType === 'people') {
        url = '/peoples/people'
      } else if (this.itemType === 'area') {
        url = '/areas/area'
      } else if (this.itemType === 'product') {
        url = '/products/productPresentation'
      }
      this.$router.push({ path: url, query: { id: id } })
    },
  },
}
</script>

<style scoped>
.item-card {
  display: flex;
  flex-direction: column;
  flex-shrink: 0;
  padding-left: 30px;
  padding-right: 30px;
  justify-content: space-between;
  max-width: 30vw;
  height: 100%;
}

.row {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: space-around;
  align-items: flex-start;
}

.column {
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: stretch;
}

.img-and-desc {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  max-width: 10vw;
  height: 100%;
}
img {
  display: flex;
  margin: 10px;
  width: 10vw;
  align-self: center;
}
p {
  max-width: 100%;
}
</style>
