/* eslint-disable @vue/no-parsing-error */
<template>
  <div id="popup" :style="style">
    <div class="inner">
      <div class="header">
        <div class="flex-box-pop-up-h">
          <div>{{ popupData.header }}</div>
          <div>
            <span class="close-button" @click="closeFunction">Close</span>
            <span class="close-icon" @click="closeFunction"
              ><img src="/close.webp" alt="close"
            /></span>
          </div>
        </div>
      </div>
      <div class="body-pop">
        <div class="link-to-share">
          {{ popupData.body }}
        </div>
        <div class="flex-box-pop-up">
          <div class="twitter-facebook">
            <a
              href="https://twitter.com/share?ref_src=twsrc%5Etfw"
              class="twitter-share-button"
              data-show-count="false"
              >Tweet</a
            >
            <script
              async
              src="https://platform.twitter.com/widgets.js"
              charset="utf-8"
            ></script>
            <iframe
              title="facebook-link"
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
              alt="mail"
            />
          </a>
        </div>
      </div>
      <div class="footer-pop" style="padding: 5px">{{ popupData.footer }}</div>
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
  computed: {
    style() {
      return {
        'z-index': this.popupData.zIndex,
        opacity: this.popupData.opacity,
      }
    },
  },
  methods: {
    closeFunction() {
      // eslint-disable-next-line vue/no-mutating-props
      this.popupData.opacity = '0'
      // eslint-disable-next-line vue/no-mutating-props
      this.popupData.zIndex = '-1'
    },
  },
  metaInfo: {
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    ],
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
  left: 0%;
  /* z-index: -1;
  opacity: 0; */
}
#popup .inner {
  position: relative;
  width: 40%;
  height: fit-content;
  margin-left: 30%;
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
  height: fit-content;
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
  padding: 4%;
}
.flex-box-pop-up {
  display: flex;
  justify-content: center;
  flex-direction: row;
  align-content: flex-start;
  align-items: center;
}
@media screen and (max-width: 600px) {
  .flex-box-pop-up {
    display: flex;
    flex-direction: column;
  }
}
.footer-pop {
  overflow: hidden;
  background-color: #333;
  flex: auto;
  color: white;
}
.close-button {
  display: block;
  position: relative;
  border: 0 none;
  width: fit-content;
  margin-right: 2%;
  text-transform: uppercase;
  text-align: center;
  color: #fff;
  background-color: #008cba;
  border-radius: 0px;
  text-decoration: none;
}
span.close-icon > img {
  height: 20px;
  mix-blend-mode: soft-light;
}
@media (min-width: 641px) {
  span.close-icon {
    display: none;
  }
  span.close-button {
    display: inline-block;
  }
}

@media (max-width: 640px) {
  span.close-icon {
    display: inline-block;
  }
  span.close-button {
    display: none;
  }
}

.twitter-facebook {
  padding: 2%;
}
.close-button:hover {
  cursor: pointer;
}
.close-icon:hover {
  cursor: pointer;
}
.flex-box-pop-up-h {
  display: flex;
  justify-content: space-between;
}
</style>
