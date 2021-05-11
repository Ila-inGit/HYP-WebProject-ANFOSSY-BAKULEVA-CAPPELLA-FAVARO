<!--
  title of the section + short description of it
-->
<template>
  <div class="flex-box" :style="style">
    <div class="row">
      <div class="column">
        <img class="title-image" :src="image" alt="image" />
      </div>
      <div class="column">
        <h1>
          {{ title }}
        </h1>
        <h2>
          {{ subtitle }}
        </h2>
        <p>
          {{ description }}
        </p>
      </div>
    </div>
    <div class="last">
      <div class="bottomright">
        <p>Contacts: {{ contacts }}</p>
      </div>
    </div>
    <card-with-carousel></card-with-carousel>
  </div>
</template>

<script>
export default {
  components: {},
  props: {
    title: {
      type: String,
      default: () => '',
    },
    subtitle: {
      type: String,
      default: () => '',
    },
    description: {
      type: String,
      default: () => '',
    },
    contacts: {
      type: String,
      default: () => '',
    },
    image: {
      type: String,
      default: () =>
        'https://www.stoneycreekwinepress.com/assets/images/labels/large/medium-square.png',
    },
    bgColor: {
      type: String,
      default: () => '#0f0f0f',
    },
    textColor: {
      type: String,
      default: () => '#f0f8ff',
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
h1 {
  padding-left: 10px;
}
h2 {
  font-style: italic;
  padding-left: 20px;
}

.title-image {
  width: 200px;
  height: 200px;
  padding: 10px;
  float: left;
}

.row {
  display: flex;
}

.bottomright {
  position: relative;
  text-align: right;
  right: 80px;
  top: 140px;
  font-size: 18px;
}

.column {
  flex: 50%;
}

.last {
  flex: 20%;
}

.flex-box {
  display: flex;
  justify-content: space-between;
  border-radius: 4px;
  box-shadow: 0 4px 8px 0 #0000004d;
}
</style>
