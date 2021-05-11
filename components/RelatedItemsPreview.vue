<!--
> shows the list of items passed as props
> displays the essential data: title/name, image, short description
-->
<template>
  <div class="row">
    <div v-for="it in items" :key="it.ID" class="item-card">
      <div class="img-and-desc">
        <img v-if="it.Image != ''" :src="it.Image" />
        <div>
          <h3>{{ it.Title }}</h3>
          <p>{{ it.Short }}</p>
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
import axios from 'axios'
import ButtonWithText from '~/components/ButtonWithText.vue'
export default {
  components: {
    ButtonWithText,
  },
  props: {
    parentId: { type: Number, default: () => 0 },
    parentType: { type: String, default: () => '' },
    childType: { type: String, default: () => '' },
  },
  data() {
    return {
      items: [],
    }
  },
  created() {
    this.fetchData()
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
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: stretch;
}
.img-and-desc {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  max-width: 20vw;
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
