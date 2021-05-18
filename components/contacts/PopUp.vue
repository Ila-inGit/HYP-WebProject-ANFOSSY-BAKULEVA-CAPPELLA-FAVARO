<template>
  <div id="popup" :style="{ display: popupData.display }">
    <div class="inner">
      <div class="header">
        <div class="flex-box-pop">
          <div>{{ popupData.header }}</div>
          <div class="close-button" @click="closeFunction">Close</div>
        </div>
      </div>
      <div class="body-pop">
        <div class="link-to-share">
          {{ popupData.body }}
        </div>
        <div class="flex-box-pop-up">
          <div class="twitter-facebook">
            <script
              await
              src="https://platform.twitter.com/widgets.js"
              charset="utf-8"
            ></script>
            <a
              href="https://twitter.com/share?ref_src=twsrc%5Etfw"
              class="twitter-share-button"
              data-show-count="false"
              >Tweet</a
            >

            <iframe
              src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button&size=small&width=87&height=20&appId"
              width="87"
              height="20"
              style="border: none; overflow: hidden"
              scrolling="no"
              frameborder="0"
              allowfullscreen="true"
              allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"
            ></iframe>
          </div>
          <a
            style="padding: 0%; float: none; width: 30px; flex: none"
            href="mailto:?subject=I wanted you to see this site&amp;body=Check out this site http://www.website.com."
            title="Share by Email"
          >
            <img
              class="mail-icon"
              src="https://www.exigome.it/wp-content/uploads/2019/11/email-envelope-letter-mail-icon-icon-mail-icon-png-512_512-300x300.png"
            />
          </a>
        </div>
      </div>
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
  position: fixed;
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
#popup > #popup .inner {
  position: fixed;
}

#popup .inner .body-pop {
  height: 100px;
  text-align: center;
  vertical-align: middle;
}
.link-to-share {
  padding: 20px;
  overflow: auto;
}
.mail {
  padding: 0%;
}
.mail-icon {
  height: 20px;
  width: 20px;
}
#popup .inner .header {
  margin: 0;
  font: bold 1em Raleway, arial;
  background-color: #008cba;
  color: #fff;
  border-bottom: 1px solid #008cba;
  padding: 20px 5px 20px 15px;
}
.flex-box-pop-up {
  display: flex;
  justify-content: center;
  flex-direction: row;
  align-content: flex-start;
  align-items: center;
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
.twitter-facebook {
  padding: 5px;
}
.close-button:hover {
  cursor: pointer;
}
.flex-box-pop {
  display: flex;
  justify-content: space-between;
}
</style>
