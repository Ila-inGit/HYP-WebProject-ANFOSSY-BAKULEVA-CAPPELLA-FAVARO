<!-- 
    shows the items passed as props
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
    relatedItems: {
      type: Array,
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
  width: 20%;
}

.row {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: space-around;
  width: 100%;
}
.img-and-desc {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
}
img {
  display: flex;
  margin: 10px;
  width: 100%;
}
</style>
