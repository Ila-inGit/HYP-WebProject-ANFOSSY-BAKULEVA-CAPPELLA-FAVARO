<!--
  about
-->
<template>
  <div>
    <SectionTitle
      title="About us"
      subtitle="Know more about our history, reviews and what moves us"
    />
    <div>
      <div
        class="row-of-side-columns"
        style="
          width: 79.5vw;
          padding: 2vh 10% 5vh;
          background-color: black;
          align-items: center;
        "
      >
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
    <div class="row-of-side-columns" style="align-items: stretch">
      <div class="column bordered">
        <div class="cardTitle">
          <h2>Our history</h2>
        </div>
        <div class="card-info">
          <history-card-with-carousel />
        </div>
      </div>
      <div class="column bordered">
        <div class="cardTitle">
          <h2>Our reviews</h2>
        </div>
        <div>
          <div class="internal-card bordered">
            <div class="card-info">
              <p>
                Best company we have ever worked with. Their expertise is
                priceless.
              </p>
              <p>Lada Cars, Head of Marketing of CSSO.</p>
            </div>
          </div>
          <div class="internal-card bordered">
            <div class="card-info">
              <p>
                The Conversational Framework is the best tool that you can use
                to build Conversational AI.
              </p>
              <p>Arya Start, programmer.</p>
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
    margin-top: 0px;
  }
  .column {
    width: 40%;
  }
  .limited {
    display: none;
  }
}
@media screen and (min-width: 1000px) {
  .row-of-side-columns {
    margin-top: -50px;
  }
  .column {
    width: 30%;
  }
}

.card-info {
  display: flex;
  flex-direction: column;
  width: 90%;
  overflow-wrap: break-word;
  padding: 1%;
  margin: 1%;
}
</style>
