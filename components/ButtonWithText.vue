<template>
  <button class="button-with-text button select-button">{{ title }}</button>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      default: () => '',
    },
  },
}
</script>

<style>
@import '~/assets/style.css';

.button-with-text {
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: block;
  margin: 4px 2px;
  transition-duration: 0.4s;
}
</style>
