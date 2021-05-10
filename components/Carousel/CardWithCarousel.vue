<template>
  <div class="wrapper">
    <carousel>
      <carousel-slide
        v-for="slide in slides"
        :key="slide"
        class="carousel-slider"
      >
        <img :src="slide" :alt="slide" />
      </carousel-slide>
    </carousel>
  </div>
</template>

<script>
import Carousel from '~/components/Carousel/Carousel'
import CarouselSlide from '~/components/Carousel/CarouselSlide'
export default {
  components: {
    Carousel,
    CarouselSlide,
  },
  data() {
    return {
      slides: [
        'https://freelinkedinbackgrounds.com/wp-content/uploads/2015/01/Technology-008.jpg',
        'https://freelinkedinbackgrounds.com/wp-content/uploads/2015/01/Technology-004.jpg',
        'https://freelinkedinbackgrounds.com/wp-content/uploads/2015/01/Technology-003.jpg',
        'https://freelinkedinbackgrounds.com/wp-content/uploads/2015/01/Technology-001.jpg',
        'https://freelinkedinbackgrounds.com/wp-content/uploads/2015/01/Technology-002.jpg',
      ],
    }
  },
}
</script>

<style>
.carousel {
  position: relative;
  overflow: hidden;
  height: 200px;
  width: 400px;
  z-index: 10;
  padding: 10px;
}
.btn {
  padding: 5px;
  background-color: rgba(0, 0, 0, 0.418);
  border: 1px solid transparent;
  margin: 5px 10px;
  color: #fff;
  height: 40px;
  width: 50px;
  position: absolute;
  margin-top: -25px;
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
.carousel-slider {
  position: absolute;
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
