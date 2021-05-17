<!--
  about
-->
<template>
  <div>
    <SectionTitle
      title="About us"
      subtitle="Know more about our history, reviews and what moves us"
    />
    <div class="row">
      <div class="card">
        <div class="cardTitle">
          <h1>Our history</h1>
        </div>
        <div>
          <history-card-with-carousel></history-card-with-carousel>
        </div>
      </div>
      <div class="card">
        <div class="cardTitle">
          <h1>Who we are</h1>
        </div>
        <div class="card-info">
          <p>
            We help businesses catch the wave of Conversational AI with the
            right technologies, tools, and expertise.
          </p>
          <p>
            As part of a major IT group, we have access to the expertise of our
            sister companies in industries like e-payments, food tech, retail,
            game publishing, and cloud technologies to build exceptional
            products and solutions.
          </p>
        </div>
      </div>
      <div class="card">
        <div class="cardTitle">
          <h1>Our reviews</h1>
        </div>
        <div>
          <div class="card-bordered">
            <div class="card-info">
              <p>
                Best company we have ever worked with. Their expertise is
                priceless.
              </p>
              <p>Lada Cars, Head of Marketing of CSSO.</p>
            </div>
          </div>
          <div class="card-bordered">
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
import HistoryCardWithCarousel from '~/components/HistCarousel/HistoryCardWithCarousel.vue'
import SectionTitle from '~/components/SectionTitle.vue'
export default {
  components: { SectionTitle, HistoryCardWithCarousel },
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
.card-bordered {
  height: auto;
  width: auto;
  padding-right: 5%;
  padding-left: 5%;
  padding-top: 1%;
  padding-bottom: 1%;
  border-style: solid;
  border: 1% px #999;
  border-radius: 10px;
  flex-direction: column;
  justify-content: flex-end;
  margin: 1%;
}
.card {
  height: auto;
  width: 25%;
  padding-right: 2.5%;
  padding-left: 2.5%;
  padding-top: 1%;
  padding-bottom: 1%;
  border-style: solid;
  border: 1% #999;
  border-radius: 10px;
  flex-direction: column;
  justify-content: flex-start;
  margin: 1%;
}
.card:hover {
  color: #008cba;
}
.card-info {
  display: flex;
  flex-direction: column;
  height: auto;
  overflow-wrap: break-word;
}
.cardTitle {
  width: 90%;
  justify-content: center;
}
.row {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: stretch;
}
h1 {
  padding-left: 1%;
}
p {
  overflow: auto;
  float: left;
}
</style>
