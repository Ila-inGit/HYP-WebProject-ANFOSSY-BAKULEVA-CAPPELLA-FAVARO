<template>
  <div class="wrapper">
    <history-carousel>
      <history-carousel-slide
        v-for="elem in cards"
        :key="elem.year"
        class="cards"
      >
        <p>{{ elem.year }}</p>
        <p>{{ elem.text }}</p>
      </history-carousel-slide>
    </history-carousel>
  </div>
</template>

<script>
import HistoryCarousel from '~/components/HistCarousel/HistoryCarousel'
import HistoryCarouselSlide from '~/components/HistCarousel/HistoryCarouselSlide'
export default {
  components: {
    HistoryCarousel,
    HistoryCarouselSlide,
  },
  data() {
    return {
      cards: [
        { year: 2012, text: 'Foundation of our company' },
        { year: 2013, text: 'Release of Conversational Java Framework v1.0' },
        {
          year: 2014,
          text:
            'Our first meetup dedicated to the Conversational AI technologies',
        },
        { year: 2016, text: 'Italy office opened' },
        { year: 2017, text: 'Release of Conversational Java Framework v2.0' },
        { year: 2019, text: 'Release of Conversational C++ Framework v1.0' },
        {
          year: 2020,
          text:
            'Release of Conversational Platform and Conversational Java Framework v3.0',
        },
      ],
    }
  },
}
</script>

<style>
.slider {
  position: relative;
  overflow: hidden;
  padding: 10px;
}
@media screen and (max-width: 600px) {
  .slider {
    height: 20vh;
    width: 75vw;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) {
  .slider {
    height: 20vh;
    width: 30vw;
  }
}
@media screen and (min-width: 992px) {
  .slider {
    height: 40vh;
    width: 20vw;
  }
}
/** previous button pointing up */
.btn-p {
  position: absolute;
  top: 10%;
  right: 0;
  width: 0;
  height: 0;
  border-left: 1vw solid transparent;
  border-right: 1vw solid transparent;
  border-bottom: 1vh solid #555;
  background-color: transparent;
}

.btn-p:hover {
  border-bottom: 1vh solid #008cba;
  cursor: pointer;
  color: #0f0f0f;
}

/** next button pointing down */
.btn-n {
  position: absolute;
  bottom: 20%;
  right: 0;
  width: 0;
  height: 0;
  border-left: 1vw solid transparent;
  border-right: 1vw solid transparent;
  border-top: 1vh solid #555;
  background-color: transparent;
}

.btn-n:hover {
  border-top: 1vh solid #008cba;
  cursor: pointer;
  color: #0f0f0f;
}

/** bordered cards with the contect of each event */
.cards {
  position: absolute;
  top: 10%;
  left: 0;
  bottom: 20%;
  right: 20%;
  padding-right: 0.5%;
  padding-left: 5%;
  padding-top: 0.5%;
  padding-bottom: 0%;
  border-style: solid;
  border: 1% px #999;
}

.cards p {
  color: #000;
  padding: 5% 40% 0 0;
}

.wrapper {
  padding: 10%;
}
</style>
