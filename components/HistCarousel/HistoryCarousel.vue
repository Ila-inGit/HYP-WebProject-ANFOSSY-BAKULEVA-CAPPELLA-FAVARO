<template>
  <div class="slider" tabindex="0" @keydown="checkSlide($event)">
    <button class="btn btn-up" @click.prevent="next">DOWN</button>
    <slot></slot>
    <button class="btn btn-down" @click.prevent="prev">UP</button>
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
      this.slideDirection = 'slide-up'
    },
    prev() {
      this.index--
      if (this.index < 0) {
        this.index = this.slidesLength - 1
      }
      this.slideDirection = 'slide-down'
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
