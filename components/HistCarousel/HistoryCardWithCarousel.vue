<template>
  <div class="wrapper">
    <history-carousel>
      <history-carousel-slide
        v-for="elem in cards"
        :key="elem.year"
        class="cards"
      >
        <h1>{{ elem.year }}</h1>
        <p style="font-size: small">{{ elem.text }}</p>
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
    height: 35vh;
    width: 75vw;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) and (max-height: 1000px) {
  .slider {
    height: 55vh;
    width: 30vw;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) and (min-height: 1000px) {
  .slider {
    height: 25vh;
    width: 30vw;
  }
}
@media screen and (min-width: 992px) {
  .slider {
    height: 25vh;
    width: 22.5vw;
  }
}

/** previous button pointing up */
/* .btn-p {
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
} */

.arrow-up {
  width: 6vmin;
  height: 6vmin;
  box-sizing: border-box;
  position: relative;
  margin-right: 2px;
  /* top: 10%;
  right: 3%; */
  transform: rotate(-45deg) scale(0.6);
}
.arrow-up::before {
  content: '';
  width: 100%;
  height: 100%;
  border-width: 0.8vmin 0.8vmin 0 0;
  border-style: solid;
  border-color: #3a405a;
  transition: 0.2s ease;
  display: block;
  transform-origin: 100% 0;
}

.arrow-up:after {
  content: '';
  float: left;
  position: relative;
  top: -100%;
  width: 100%;
  height: 100%;
  border-width: 0 0.8vmin 0 0;
  border-style: solid;
  border-color: #3a405a;
  transform-origin: 100% 0;
  transition: 0.2s ease;
}

.arrow-up:hover::after {
  transform: rotate(45deg);
  border-color: #685044;
  height: 120%;
}
.arrow-up:hover::before {
  border-color: #685044;
  transform: scale(0.8);
}
/** next button pointing down */
.arrow-down {
  width: 6vmin;
  height: 6vmin;
  box-sizing: border-box;
  position: relative;
  margin-left: 2px;
  /* bottom: 20%;
  right: 3%; */
  transform: rotate(135deg) scale(0.6);
}
.arrow-down::before {
  content: '';
  width: 100%;
  height: 100%;
  border-width: 0.8vmin 0.8vmin 0 0;
  border-style: solid;
  border-color: #3a405a;
  transition: 0.2s ease;
  display: block;
  transform-origin: 100% 0;
}

.arrow-down:after {
  content: '';
  float: left;
  position: relative;
  top: -100%;
  width: 100%;
  height: 100%;
  border-width: 0 0.8vmin 0 0;
  border-style: solid;
  border-color: #3a405a;
  transform-origin: 100% 0;
  transition: 0.2s ease;
}

.arrow-down:hover::after {
  transform: rotate(45deg);
  border-color: #685044;
  height: 120%;
}
.arrow-down:hover::before {
  border-color: #685044;
  transform: scale(0.8);
}

@media screen and (max-width: 600px) {
  .arrow-down {
    transform: rotate(135deg) scale(1);
  }
  .arrow-up {
    transform: rotate(-45deg) scale(1);
  }
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
  padding-bottom: 1%;
  border-style: solid;
  border-color: #3a405a;
  box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);
  border-radius: 10px;
}

.cards p {
  padding: 0% 20% 0% 0%;
}
.cards h1 {
  text-shadow: 1px 1px #201e1e;
  letter-spacing: 3px;
}

.wrapper {
  padding: 0% 2.5%;
}
</style>
