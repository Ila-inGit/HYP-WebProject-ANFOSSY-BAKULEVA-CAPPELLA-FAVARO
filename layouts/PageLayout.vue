<!--
  This sets the page to have header, chatbot and footer
  import this to wrap your page in these
-->

<!--Show the pages wrapped between header and footer with the added chatbot-->
<template>
  <div class="page-container">
    <the-topbar />
    <Nuxt class="content-wrap" />
    <chat :chat-list="list" />
    <the-footer />
  </div>
</template>

<script>
import TheTopbar from '~/components/topbar/TheTopbar'
import TheFooter from '~/components/TheFooter.vue'
import Chat from '~/components/Chat.vue'
import MMCCMixin from '~/mixins/mmcc-mixin'
export default {
  components: {
    TheTopbar,
    TheFooter,
    Chat,
  },
  mixins: [MMCCMixin],
}
</script>

<style>
html {
  font-family: 'Ubuntu';
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}
@media screen and (max-width: 400px) {
  html {
    font-size: 0.75rem;
  }
}
@media screen and (min-width: 400px) {
  html {
    font-size: 60%;
  }
}

.page-container {
  min-height: 100vh;
  position: relative;
}
.content-wrap {
  /* max-width: 1000px; */
  margin: auto;
  padding-bottom: 4rem;
}

a {
  color: white;
}
</style>
