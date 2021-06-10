<!--
> shows the list of items passed as props
> displays the essential data: title/name, image, short description
-->
<template>
  <div class="column bordered">
    <div class="title-video-container">
      <!-- video (optional)
        <div v-if="showVideo">
          <iframe
            class="video"
            src="https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1&mute=1"
          />
        </div> -->
      <!-- Title of the section -->
      <h1>{{ title }}</h1>
    </div>
    <!-- Preview of the elements -->
    <div class="table">
      <div v-for="it in items" :key="it.ID" class="item-card">
        <div class="img-and-desc">
          <img v-if="it.Image" :src="it.Image" :alt="'image'" />
          <div>
            <h3>{{ it.Title }}</h3>
            <p>{{ it.Short }}</p>
            <button-with-text
              :title="'Learn more'"
              @click.native="goToPage(it.ID)"
            />
          </div>
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
        url = `/team/`
      } else if (this.childType === 'area') {
        url = `/areas/`
      } else if (this.childType === 'product') {
        url = `/products/`
      }
      this.$router.push({ path: url + id })
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
  display: flex;
  flex-direction: column;
  border-radius: 5vh;
  align-items: flex-start;
  margin: 2%;
}
.title-video-container {
  display: flex;
  flex-direction: row;
  width: 90%;
  flex-wrap: wrap;
  justify-content: space-evenly;
  padding: 2%;
}
.table {
  display: flex;
  width: 100%;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-evenly;
  align-items: center;
  padding-top: 0.5%;
  padding-left: 3%;
  padding-right: 1%;
  padding-bottom: 2.5%;
}

.video {
  display: flex;
  width: 20vw;
  height: 10vw;
  max-width: 500px;
  max-height: 500px;
}

.item-card {
  display: flex;
  flex-direction: column;
  flex-shrink: 0;
  justify-content: space-between;
  height: auto;
}
@media screen and (max-width: 600px) {
  .item-card {
    width: 100%;
  }
}
@media screen and (min-width: 600px) and (max-width: 1000px) {
  .item-card {
    width: 50%;
  }
}
@media screen and (min-width: 1000px) {
  .item-card {
    display: flex;
    width: 33%;
    align-items: stretch;
  }
}

.img-and-desc {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  margin: 1%;
}
img {
  display: flex;
  margin: 10px;
  max-width: 30%;
  align-self: center;
}
</style>
