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
  height: 200px;
  width: 325px;
  z-index: 1;
  padding: 10px;
}

.btn-down {
  position: absolute;
  top: 10%;
  right: 0;
  width: 0;
  height: 0;
  border-left: 20px solid transparent;
  border-right: 20px solid transparent;
  border-bottom: 20px solid #555;
  background-color: transparent;
}

.btn-down:hover {
  border-bottom: 20px solid #008cba;
  cursor: pointer;
  color: #0f0f0f;
}

.btn-up {
  position: absolute;
  bottom: 10%;
  right: 0;
  width: 0;
  height: 0;
  border-left: 20px solid transparent;
  border-right: 20px solid transparent;
  border-top: 20px solid #555;
  background-color: transparent;
}
.btn-up:hover {
  border-top: 20px solid #008cba;
  cursor: pointer;
  color: #0f0f0f;
}

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
  padding: 5px 40px 0 0;
}

.wrapper {
  padding: 10px;
}
</style>
