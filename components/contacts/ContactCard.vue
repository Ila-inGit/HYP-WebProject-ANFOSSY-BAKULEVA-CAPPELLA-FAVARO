<template>
  <div>
    <div class="flex-box">
      <div>
        <h3>{{ first.title }}</h3>
      </div>
      <div class="btt">
        <ButtonWithText :title="first.buttonTitle" />
      </div>
    </div>
    <div class="flex-box">
      <div>
        <h3>{{ second.title }}</h3>
      </div>
      <div class="btt">
        <ButtonWithText :title="second.buttonTitle" />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    first: {
      type: Object,
      default: () => null,
    },
    second: {
      type: Object,
      default: () => null,
    },
  },
}
</script>

<style scoped>
.flex-box {
  border-radius: 4px;
  box-shadow: 0 4px 8px 0 #0000004d;
}

h3 {
  font-size: 15px;
  padding: 20px;
}
.btt {
  padding: 20px;
}
</style>
