<!--
  about page
-->
<template>
  <div>
    <SectionTitle
      title="About us"
      subtitle="Know more about our history, reviews and what moves us"
    />
    <div>
      <div class="row-of-side-columns with-ultra-style">
        <div class="column" style="background-color: black; padding: 2% 5%">
          <h1 class="light-text">Who we are</h1>
          <h3 class="light-text">
            We help businesses catch the wave of Conversational AI with the
            right technologies, tools, and expertise.
          </h3>
          <h3 class="light-text">
            As part of a major IT group, we have access to the expertise of our
            sister companies in industries like e-payments, food tech, retail,
            game publishing, and cloud technologies to build exceptional
            products and solutions.
          </h3>
        </div>
        <card-with-carousel class="limited"></card-with-carousel>
      </div>
    </div>
    <div class="row-of-side-columns about-us">
      <div class="column bordered car">
        <div class="cardTitle history">
          <h1>Our history</h1>
        </div>
        <div class="card-info" style="width: 100%">
          <history-card-with-carousel />
        </div>
      </div>
      <div class="column bubbles">
        <div class="cardTitle reviews">
          <h1>Our reviews</h1>
        </div>
        <div>
          <div class="bubble-left">
            <div class="card-info">
              <p class="quote">
                "Best company we have ever worked with. Their expertise is
                <span style="color: #e9afa3">priceless</span>."
              </p>
              <p class="pers-quoted">Lada Cars, Head of Marketing of CSSO.</p>
            </div>
          </div>
          <div class="bubble-right">
            <div class="card-info">
              <p class="quote">
                "The Conversational Framework is the
                <span style="color: #e9afa3">best tool</span> that you can use
                to build Conversational AI."
              </p>
              <p class="pers-quoted">Arya Start, programmer.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import CardWithCarousel from '~/components/Carousel/CardWithCarousel'
import HistoryCardWithCarousel from '~/components/HistCarousel/HistoryCardWithCarousel.vue'
import SectionTitle from '~/components/SectionTitle.vue'
export default {
  // components
  components: { SectionTitle, CardWithCarousel, HistoryCardWithCarousel },
  layout: 'PageLayout',
  props: {
    title: {
      type: String,
      default: () => 'Error',
    },
    subtitle: {
      type: String,
      default: () => '',
    },
    image: {
      type: String,
      default: () =>
        'https://www.stoneycreekwinepress.com/assets/images/labels/large/medium-square.png',
    },
    bgColor: {
      type: String,
      default: () => '#0f0f0f',
    },
    textColor: {
      type: String,
      default: () => '#ffffff',
    },
  },
  // meta
  head: {
    title: 'About us',
  },
  meta: [
    {
      hid: 'about',
      name: 'description',
      content:
        'We help businesses catch the wave of Conversational AI with the right technologies, tools, and expertise. Explore our history and know what people say about us',
    },
  ],

  computed: {
    style() {
      return {
        'background-color': this.bgColor,
        color: this.textColor,
      }
    },
  },
}
</script>

<style scoped>
@import '~/assets/style.css';

.about-us {
  background-color: #ffffff;
  align-items: stretch;
}

.internal-card {
  height: auto;
  width: 85%;
  padding-right: 5%;
  padding-left: 5%;
  padding-top: 1%;
  padding-bottom: 1%;
  border: 1% px;
  flex-direction: column;
  justify-content: flex-end;
  margin: 1%;
}

.bubbles {
  /* background-image: linear-gradient(to top, rgba(255, 251, 0, 0.365), white); */
  background-color: #3a405a;
}

.car {
  background-color: #f9dec9;
  border-color: #3a405a;
  border-radius: 0;
}

.bubble-left {
  position: relative;
  margin: 3% 15% 3% 0;
  max-width: 30em;
  /* background-color: rgb(255, 255, 255); */
  background-color: transparent;
  padding: 1.125em 1.5em;
  font-size: 1.25em;
  border-radius: 1rem;
  box-shadow: 0 0.125rem 0.5rem rgba(0, 0, 0, 0.774),
    0 0.0625rem 0.125rem rgba(0, 0, 0, 0.7);
}

.bubble-left::before {
  content: '';
  position: absolute;
  width: 0;
  height: 0;
  bottom: 100%;
  left: 1.5em;
  border: 0.75rem solid transparent;
  border-top: none;
  transform: scale(1.5);

  border-bottom-color: rgba(0, 0, 0, 0.37);
  filter: drop-shadow(0 -0.0625rem 0.0625rem rgba(0, 0, 0, 0.2));
}
.bubble-right {
  position: relative;
  margin: 3% 0 3% 15%;
  max-width: 30em;
  background-color: transparent;
  padding: 1.125em 1.5em;
  font-size: 1.25em;
  border-radius: 1rem;
  box-shadow: 0 0.125rem 0.5rem rgba(0, 0, 0, 0.7),
    0 0.0625rem 0.125rem rgba(0, 0, 0, 0.7);
}

.bubble-right::before {
  content: '';
  position: absolute;
  width: 0;
  height: 0;
  top: 100%;
  right: 1.5em;
  transform: rotate(180deg) scale(1.5);
  border: 0.75rem solid transparent;
  border-top: none;

  border-bottom-color: rgba(0, 0, 0, 0.37);
  filter: drop-shadow(0 -0.0625rem 0.0625rem rgba(0, 0, 0, 0.1));
}
.with-ultra-style {
  padding: 2vh 0 5vh;
  background-color: black;
  align-items: center;
}

@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
  .limited {
    display: none;
  }
}
@media screen and (min-width: 600px) and (max-width: 1000px) {
  .row-of-side-columns {
    margin-top: 0;
  }
  .column {
    width: 40%;
  }
  .limited {
    display: none;
  }
}
@media screen and (min-width: 1000px) and (max-width: 1200px) {
  .row-of-side-columns {
    margin-top: 0;
  }
}
@media screen and (min-width: 1200px) {
  .row-of-side-columns {
    margin-top: -30px;
  }
  .column {
    width: 40%;
  }
}

.card-info {
  display: flex;
  flex-direction: column;
  overflow-wrap: break-word;
  padding: 1%;
  margin: 1%;
}

.quote {
  color: #aec5eb;
  font-weight: 700;
}

.pers-quoted {
  font-style: italic;
  color: #f9dec9;
  font-weight: 900;
}

.history {
  color: #685044;
  text-shadow: 1px 1px #894e24;
  letter-spacing: 4px;
  font-weight: 900;
}
.reviews {
  color: #e9afa3;
  text-shadow: 1px 1px #000000;
  letter-spacing: 4px;
  font-weight: 900;
}
</style>
