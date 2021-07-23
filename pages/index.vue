<!--
  homepage
-->

<template>
  <div>
    <SectionTitle :title="'IT Consulting'" :subtitle="'and Services'" />
    <div class="row-of-side-columns">
      <div class="column bordered">
        <h1>Our areas</h1>
        <p>Find out about our areas of expertise</p>
        <img class="img-card" src="~/static/areas.jpg" alt="go to areas" />
        <button class="but" @click="goTo('areas')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div class="column bordered">
        <h1>Our products</h1>
        <p>See everything we can offer you</p>
        <img class="img-card" src="~/static/prod.jpg" alt="go to products" />
        <button class="but" @click="goTo('products')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div class="column bordered">
        <h1>Our team</h1>
        <p>Discover the people behind this company</p>
        <img class="img-card" src="~/static/people.jpg" alt="go to people" />
        <button class="but" @click="goTo('team')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
    </div>
    <div class="row2">
      <div
        class="about-contact-homePage"
        style="background-image: linear-gradient(to right, #008080, #6a5acd)"
      >
        <h1 class="anim-l-r light-text">About us</h1>
        <p class="anim-l-r light-text">Know more about our company</p>
        <button class="but anim-l-r" @click="goTo('about')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div
        class="about-contact-homePage"
        style="background-image: linear-gradient(to left, #191970, #8b008b)"
      >
        <h1 class="anim-r-l light-text">Contact us</h1>
        <p class="anim-r-l light-text">Find our contact information</p>
        <button class="but anim-r-l" @click="goTo('contact_us')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
    </div>
  </div>
</template>

<script>
import SectionTitle from '~/components/SectionTitle.vue'
export default {
  components: { SectionTitle },
  layout: 'PageLayout',
  data() {
    return {
      scrollOffset: 10,
      scrollElements_r_l: [],
      scrollElements_l_r: [],
    }
  },
  // meta
  head: {
    title: 'Comc',
  },
  meta: [
    {
      hid: 'home',
      name: 'description',
      content:
        'Explore our IT company. Check out our woorkfields and our products, and know our team',
    },
  ],
  beforeMount() {
    window.addEventListener('scroll', this.handleScroll)
  },
  mounted() {
    this.scrollElements_r_l = window.document.querySelectorAll('.anim-r-l')
    this.scrollElements_l_r = window.document.querySelectorAll('.anim-l-r')
  },
  beforeDestroy() {
    window.removeEventListener('scroll', this.handleScroll)
  },
  methods: {
    goTo(place) {
      this.$router.push({ path: this.$route.path + place })
    },

    elementInView(el, offset = 0) {
      const elementTop = el.getBoundingClientRect().top

      return (
        elementTop <=
        (window.innerHeight || document.documentElement.clientHeight) - offset
      )
    },
    displayScrollElement_r_l(element) {
      element.classList.add('scrolled-r-l')
    },
    hideScrollElement_r_l(element) {
      element.classList.remove('scrolled-r-l')
    },

    displayScrollElement_l_r(element) {
      element.classList.add('scrolled-l-r')
    },
    hideScrollElement_l_r(element) {
      element.classList.remove('scrolled-l-r')
    },

    handleScroll() {
      if (this.scrollElements_r_l) {
        this.scrollElements_r_l.forEach((element) => {
          if (this.elementInView(element, this.scrollOffset)) {
            this.displayScrollElement_r_l(element)
          } else {
            this.hideScrollElement_r_l(element)
          }
        })
      }
      if (this.scrollElements_l_r) {
        this.scrollElements_l_r.forEach((element) => {
          if (this.elementInView(element, this.scrollOffset)) {
            this.displayScrollElement_l_r(element)
          } else {
            this.hideScrollElement_l_r(element)
          }
        })
      }
    },
  },
}
</script>

<style scoped>
@import '~/assets/style.css';

/** container wraps two rows */
.container {
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  align-self: center;
  align-items: stretch;
  flex-shrink: 0;
}

/** row2 made of company columns */
.row2 {
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: stretch;
}

/* column contains the sections */
/* the size of the columns is based on the screen size */
@media screen and (max-width: 600px) {
  .row2 {
    width: 100%;
    flex-direction: row;
  }
  .column {
    width: 90%;
  }
  .anim-r-l {
    padding-left: 50%;
  }
  .anim-l-r {
    padding-right: 50%;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) {
  .row2 {
    width: 100%;
    flex-direction: row;
  }
  .column {
    width: 45%;
  }
  .anim-r-l {
    padding-left: 50%;
  }
  .anim-l-r {
    padding-right: 50%;
  }
}
@media screen and (min-width: 992px) {
  .container {
    flex-direction: row;
  }
  .row2 {
    align-items: center;
    margin: auto;
  }
  .column {
    width: 27%;
  }
  .anim-r-l {
    padding-left: 50%;
  }
  .anim-l-r {
    padding-right: 50%;
  }
}

.but {
  background-color: transparent;
  border: transparent;
  padding-top: 4%;
}

.but:focus {
  outline: none;
}

.img-card {
  width: 80%;
}

.anim-r-l {
  opacity: 0;
}
.anim-r-l.scrolled-r-l {
  opacity: 1;
}

.anim-l-r {
  opacity: 0;
}
.anim-l-r.scrolled-l-r {
  opacity: 1;
}
.scrolled-r-l {
  animation: right_to_left 2s ease;
}
.scrolled-l-r {
  animation: left_to_right 2s ease;
}
@keyframes right_to_left {
  from {
    margin-left: 100%;
  }
  to {
    margin-left: 0;
  }
}

@keyframes left_to_right {
  from {
    margin-left: -100%;
  }
  to {
    margin-left: 0;
  }
}
</style>
