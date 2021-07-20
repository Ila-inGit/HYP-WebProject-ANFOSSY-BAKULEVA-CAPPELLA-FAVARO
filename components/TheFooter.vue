<template>
  <div class="footer">
    <div class="flex-box-foot">
      <NuxtLink class="a" to="/">Home page</NuxtLink>
      <div>
        <a @click="openpopup">Share</a>
        <popup :popup-data="popupData"></popup>
      </div>
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
  position: absolute;
  bottom: 0%;
  height: 4rem;
  width: 100%;
  color: white;
}
/* footer links */
.footer a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 1.5rem;
  text-decoration: none;
  font-size: 1.3rem;
  height: 4rem;
}

/* Links - change color on hover */
.footer a:hover {
  background-color: #ddd;
  color: black;
  cursor: pointer;
}

.flex-box-foot {
  display: flex;
  justify-content: start;
  flex-direction: row;
  align-content: flex-start;
  align-items: center;
}
</style>
