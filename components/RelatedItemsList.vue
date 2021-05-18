<template>
  <div>
    <div class="flex-box" :style="style">
      <div class="main-container">
        <h2>{{ title }}</h2>
      </div>
      <div class="row">
        <div v-for="it in items" :key="it.ID" class="item-card">
          <button-with-text :title="it.Title" @click.native="goToPage(it.ID)" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
import ButtonWithText from '~/components/ButtonWithText.vue'
export default {
  components: {
    ButtonWithText,
  },
  props: {
    title: { type: String, default: () => '' },
    parentId: { type: Number, default: () => 0 },
    parentType: { type: String, default: () => '' },
    childType: { type: String, default: () => '' },
    bgColor: { type: String, default: () => '#000000' },
    textColor: { type: String, default: () => '#ffffff' },
    showVideo: { type: Boolean, default: false },
  },
  data() {
    return {
      items: [],
    }
  },
  computed: {
    style() {
      return { 'background-color': this.bgColor, color: this.textColor }
    },
  },
  created() {
    this.fetchData()
  },

  methods: {
    goToPage(id) {
      let url = '/'
      if (this.childType === 'person') {
        url = `/our_team/presentation/person`
      } else if (this.childType === 'area') {
        url = `/our_workfields/area`
      } else if (this.childType === 'product') {
        url = `/products/product_presentation`
      }
      this.$router.push({ path: url, query: { id: id } })
    },
    async fetchData() {
      const getReq = `${process.env.BASE_URL}/api/relatedItems/${this.parentId}/${this.parentType}/${this.childType}`
      const { data } = await axios.get(getReq)
      let items = []
      if (this.childType === 'person') {
        items = data[0].people
      } else if (this.childType === 'area') {
        items = data[0].areas
      } else if (this.childType === 'product') {
        items = data[0].products
      } else {
        alert(`ERROR: child type ${this.childType} not valid`)
      }

      // have all the used key with the same name
      items.forEach((element) => {
        if (element.Picture) element.Image = element.Picture
        if (element.Name) element.Title = element.Name
        if (element.Role) element.Short = element.Role
      })
      this.items = items
    },
  },
}
</script>

<style scoped>
.main-container {
  flex-direction: row;
  margin: 0;
  padding-left: 3%;
  width: 80%;
  flex-wrap: wrap;
  align-items: center;
  text-align: center;
}

.flex-box {
  display: flex;
  justify-content: flex-start;
  flex-direction: column;
  border-radius: 10%;
  margin: 4%;
}

.item-card {
  display: flex;
  flex-direction: column;
  flex-shrink: 0;
  padding: 0;
  max-width: 20vw;
  height: auto;
}

.row {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: stretch;
  align-self: center;
}

img {
  display: flex;
  margin: 5px;
  width: 5vw;
  align-self: center;
}
h1 {
  padding: 10px;
  align-items: center;
  margin: 0;
}

.small {
  transform: scale(0.8, 0.8);
  -ms-transform: scale(0.8, 0.8); /* IE 9 */
  -webkit-transform: scale(0.8, 0.8); /* Safari and Chrome */
  -o-transform: scale(0.8, 0.8); /* Opera */
  -moz-transform: scale(0.8, 0.8); /* Firefox */
}

p {
  max-width: 100%;
}
</style>
