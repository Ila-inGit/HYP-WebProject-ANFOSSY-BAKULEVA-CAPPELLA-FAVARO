<template>
  <div class="carousel" tabindex="0" @keydown="checkSlide($event)">
    <slot></slot>
    <button class="btn btn-next" @click.prevent="next">NEXT</button>
    <button class="btn btn-prev" @click.prevent="prev">PREV</button>
  </div>
</template>
<script>
export default {
  data() {
    return {
      index: 0,
      slides: [],
      slideDirection: '',
    }
  },
  computed: {
    slidesLength() {
      return this.slides.length
    },
  },
  mounted() {
    this.slides = this.$children
    this.slides.map((slide, index) => {
      slide.index = index
      return 0
    })
  },
  methods: {
    next() {
      this.index++
      if (this.index >= this.slidesLength) {
        this.index = 0
      }
      this.slideDirection = 'slide-right'
    },
    prev() {
      this.index--
      if (this.index < 0) {
        this.index = this.slidesLength - 1
      }
      this.slideDirection = 'slide-left'
    },
    checkSlide(event) {
      if (event.keyCode === 39) {
        this.next()
      } else if (event.keyCode === 37) {
        this.prev()
      }
    },
  },
}
</script>
<style>
@media screen and (max-width: 600px) {
  .btn.btn-next {
    width: 30%;
    height: 30%;
  }
  .btn.btn-prev {
    width: 30%;
    height: 30%;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) {
  .btn.btn-next {
    width: 50%;
    height: 50%;
  }
  .btn.btn-prev {
    width: 50%;
    height: 50%;
  }
}
</style>
