<template>
  <div class="flex-box">
    <div class="row">
      <carousel>
        <carousel-slide
          v-for="item in items"
          :key="item.id"
          class="carousel-slider"
        >
          <people-preview
            :related-items="[
              { id: item.id, title: item.title, image: item.image },
            ]"
          />
        </carousel-slide>
      </carousel>
      <people-tabs />
    </div>
  </div>
</template>

<script>
import db from '~/static/fake_db.json'
// eslint-disable-next-line import/no-absolute-path
import Carousel from '/components/Carousel/Carousel'
// eslint-disable-next-line import/no-absolute-path
import CarouselSlide from '/components/Carousel/CarouselSlide'
export default {
  components: {
    Carousel,
    CarouselSlide,
  },
  props: {
    bgColor: { type: String, default: () => '#0f0f0f' },
    textColor: { type: String, default: () => '#ffffff' },
  },
  data() {
    const items = db.people
    return { items: items }
  },
}
</script>

<style>
.flex-box {
  flex-direction: row;
  background-color: background-color;
  text-emphasis-color: color;
}

.row {
  display: flex;
}

.border-column {
  border: solid #999;
  border-radius: 10px;
  width: 50%;
  display: flex;
  flex-direction: column;
  align-items: stretch;
}

.carousel {
  position: relative;
  overflow: hidden;
  height: 200px;
  width: 400px;
  z-index: 60;
  padding: 10px;
}
.btn {
  padding: 5px;
  background-color: rgba(0, 0, 0, 0.418);
  border: 1px solid transparent;
  color: #fff;
  height: 40px;
  width: 50px;
  position: absolute;
  margin: -25px 10px 5px;
  font-size: small;
  font-style: italic;
  z-index: 2;
}
.btn:hover {
  cursor: pointer;
}
.btn:focus {
  outline: none;
}
.btn-next {
  top: 50%;
  right: 0;
}
.btn-prev {
  top: 50%;
  left: 0;
}

.related-items-preview {
  width: 5%;
  height: 5%;
}

.carousel-slider {
  position: relative;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
}
.carousel-slider img {
  width: 100%;
  height: 100%;
}
.wrapper {
  padding: 10px;
}
</style>
