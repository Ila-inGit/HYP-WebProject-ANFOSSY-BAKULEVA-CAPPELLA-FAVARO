<template>
  <button class="button-with-text button1">{{ title }}</button>
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
.button-with-text {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: rgb(80, 80, 80);
  color: white;
  border: 2px solid white;
  border-radius: 5%;
}

.button1:hover {
  background-color: #008cba;
  color: white;
}
</style>
