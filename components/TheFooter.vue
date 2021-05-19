<template>
  <div class="footer">
    <NuxtLink class="a" to="/">Home page</NuxtLink>
    <div>
      <a @click="openpopup">Share</a>
      <popup :popup-data="popupData"></popup>
    </div>
  </div>
</template>

<script>
import Popup from '~/components/contacts/PopUp.vue'
export default {
  components: {
    popup: Popup,
  },
  data() {
    return {
      popupData: {
        header: 'Share',
        footer: 'Comc company',
        body: '',
        opacity: '0',
        zIndex: '-1',
      },
    }
  },
  methods: {
    openpopup() {
      this.popupData.body = window.location.origin + this.$route.path
      this.popupData.opacity = '100'
      this.popupData.zIndex = '10000'
    },
  },
}
</script>

<style>
.right {
  display: flex;
  justify-content: space-between;
  width: 100%;
  margin: auto;
  max-width: 50%;
}

/* The footer container */
.footer {
  overflow: hidden;
  background-color: #333;
  flex: auto;
  color: white;
}
/* footer links */
.footer a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 1% 2%;
  text-decoration: none;
  flex: auto;
  font-size: 1.3rem;
}

@media screen and (max-width: 400px) {
  .footer a {
    float: none;
    width: 100%;
  }
}
/* Links - change color on hover */
.footer a:hover {
  background-color: #ddd;
  color: black;
}
</style>
