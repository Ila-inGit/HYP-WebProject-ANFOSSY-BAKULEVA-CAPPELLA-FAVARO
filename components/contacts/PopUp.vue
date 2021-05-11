<template>
  <div id="popup" :style="{ display: popupData.display }">
    <div class="inner">
      <div class="header">
        <div class="flex-box-pop">
          <div>{{ popupData.header }}</div>
          <div class="close-button" @click="closeFunction">Close</div>
        </div>
      </div>
      <div class="body-pop">{{ popupData.body }}</div>
      <div class="footer" style="padding: 5px">{{ popupData.footer }}</div>
    </div>
  </div>
</template>
<script>
export default {
  props: {
    popupData: {
      type: Object,
      default: null,
    },
  },
  methods: {
    closeFunction() {
      // eslint-disable-next-line vue/no-mutating-props
      this.popupData.display = 'none'
    },
  },
}
</script>

<style>
#popup {
  background-color: rgba(0, 0, 0, 0.3);
  position: absolute;
  top: 0;
  width: 100%;
  height: 100%;
  left: 0px;
  z-index: 10000;
}
#popup .inner {
  position: relative;
  width: 33%;
  min-height: 100px;
  max-height: 400px;
  margin-top: 50px;
  margin-left: 33%;
  border: 3px solid #fff;
  border-radius: 5px;
  background-color: #fff;
  background-repeat: no-repeat;
  color: black;
  top: 30%;
}
#popup .inner .body-pop {
  height: 50px;
  padding-left: 10px;
  padding-top: 30px;
  text-align: center;
  vertical-align: middle;
}
#popup .inner .header {
  margin: 0;
  font: bold 1em Raleway, arial;
  background-color: #008cba;
  color: #fff;
  border-bottom: 1px solid #008cba;
  padding: 20px 5px 20px 15px;
}
.close-button {
  display: block;
  position: relative;
  border: 0 none;
  width: 70px;
  text-transform: uppercase;
  text-align: center;
  color: #fff;
  background-color: #008cba;
  border-radius: 0px;
  text-decoration: none;
}
.close-button:hover {
  cursor: pointer;
}
.flex-box-pop {
  display: flex;
  justify-content: space-between;
}
</style>
