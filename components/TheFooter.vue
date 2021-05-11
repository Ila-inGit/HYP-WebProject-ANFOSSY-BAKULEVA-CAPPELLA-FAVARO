<template>
  <div class="footer">
    <NuxtLink class="a" to="/">Home page</NuxtLink>
    <div>
      <a @click="openpopup">Share</a>
      <!--<popup :popup-data="popupData"></popup>-->
    </div>
  </div>
</template>

<script>
// import Popup from '~/components/contacts/PopUp.vue'
export default {
  components: {
    // popup: Popup,
  },
  data() {
    return {
      popupData: {
        header: 'Share Link',
        footer: 'Surf the spider house inc.',
        body: '',
        display: 'none',
      },
    }
  },
  methods: {
    openpopup() {
      this.popupData.body = window.location.origin + this.$route.path
      this.popupData.display = 'block'
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
  padding: 14px 16px;
  text-decoration: none;
  flex: auto;
  font-size: 1.3rem;
}
/* Links - change color on hover */
.footer a:hover {
  background-color: #ddd;
  color: black;
}
</style>
