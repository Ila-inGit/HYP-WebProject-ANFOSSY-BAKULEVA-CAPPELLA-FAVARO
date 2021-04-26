<template>
  <div class="carousel" tabindex="0" @keydown="checkSlide($event)">
    <slot></slot>
    <button class="btn btn-next" @click.prevent="next">
      <i class="fa fa-angle-right"></i>
    </button>
    <button class="btn btn-prev" @click.prevent="prev">
      <i class="fa fa-angle-left"></i>
    </button>
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
<style></style>
