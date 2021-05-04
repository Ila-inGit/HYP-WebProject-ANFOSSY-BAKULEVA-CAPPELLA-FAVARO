<template>
  <div class="container">
    <tabs>
      <tab name="Presentation" :selected="true">
        <h3>Presentation</h3>
      </tab>
      <tab name="Working Areas">
        <div>
          <h3>Working Areas</h3>
        </div>
      </tab>
      <tab name="Developed Products">
        <h3>Developed products</h3>
      </tab>
    </tabs>
  </div>
</template>

<script>
import Tab from '~/components/tabs/tab'
import Tabs from '~/components/tabs/tabs'
export default {
  components: {
    Tabs,
    Tab,
  },
}
</script>

<style scoped>
.container {
  display: inline;
}
</style>
