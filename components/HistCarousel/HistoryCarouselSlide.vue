<!--
  sliding animation of carousel
-->

<template>
  <transition :name="dir">
    <div v-show="visible">
      <slot></slot>
    </div>
  </transition>
</template>

<script>
export default {
  data() {
    return {
      index: 0,
    }
  },
  computed: {
    visible() {
      return this.index === this.$parent.index
    },
    dir() {
      return this.$parent.slideDirection
    },
  },
}
</script>

<style scoped>
.slide-down-enter-active {
  animation: slide-down-in 0.5s ease-in;
}
.slide-down-leave-active {
  animation: slide-down-out 0.5s ease-in;
}
@keyframes slide-down-in {
  from {
    transform: translateY(-100%);
  }
  to {
    transform: translateY(0);
  }
}
@keyframes slide-down-out {
  from {
    transform: translateY(0%);
  }
  to {
    transform: translateY(100%);
  }
}

.slide-up-enter-active {
  animation: slide-up-in 0.5s ease-in;
}
.slide-up-leave-active {
  animation: slide-up-out 0.5s ease-in;
}
@keyframes slide-up-out {
  from {
    transform: translateY(0%);
  }
  to {
    transform: translateY(-100%);
  }
}
@keyframes slide-up-in {
  from {
    transform: translateY(100%);
  }
  to {
    transform: translateY(0);
  }
}
</style>
