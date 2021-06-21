<!--
  wrapper of carousel
-->

<template>
  <div class="flex">
    <div class="slider" tabindex="0" @keydown="checkSlide($event)">
      <slot></slot>
    </div>
    <div class="flex-arrow">
      <div class="arrow-up" @click.prevent="next"></div>
      <div class="arrow-down" @click.prevent="prev"></div>
    </div>
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
<style>
.flex {
  display: flex;
  justify-content: space-around;
  border-radius: 4px;
  padding: 3%;
}
.flex-arrow {
  display: flex;
  padding: 2%;
  flex-direction: column;
  justify-content: space-around;
  align-items: center;
  align-content: stretch;
}
</style>
