<!--
    shows the items passed as props
-->
// i think it is not used
<template>
  <div class="row">
    <div v-for="it in relatedItems" :key="it.id" class="item-card">
      <h2 @click="goToPeople(it.id)">{{ it.title }}</h2>
      <div class="img-and-desc">
        <img
          v-if="it.image !== ''"
          :src="it.image"
          :alt="it.title"
          @click="goToPeople(it.id)"
        />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  components: {},
  props: {
    relatedItems: {
      type: Array,
      default: () => [],
    },
  },
  methods: {
    goToPeople(id) {
      this.$router.push({
        path: 'people',
        query: { peopleId: id },
      })
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
