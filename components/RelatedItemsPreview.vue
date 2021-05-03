<!-- 
> shows the list of items passed as props
> displays the essential data: title/name, image, short description
-->
<template>
  <div class="row">
    <div v-for="it in relatedItems" :key="it.id" class="item-card">
      <div class="img-and-desc">
        <img v-if="it.image != ''" :src="it.image" />
        <div>
          <h3>{{ it.title }}</h3>
          <p>{{ it.description }}</p>
          <button-with-text :title="'Learn more'"></button-with-text>
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
}

.row {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: stretch;
}
.img-and-desc {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  width: auto;
  height: auto;
}
img {
  display: flex;
  margin: 10px;
  width: 10vw;
}
</style>
