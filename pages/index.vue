<!--
  homepage
-->

<template>
  <div>
    <div
      class="w3-display-container w3-content w3-center"
      style="position: relative; text-align: center; z-index: -5"
    >
      <img
        class="w3-image"
        src="~/static/hexTech.jpg"
        alt="backgroundImageTech"
        style="
          max-width: 100%;
          height: auto;
          vertical-align: middle;
          filter: brightness(30%);
        "
        width="1500"
        height="600"
      />
      <div
        class="w3-display-middle w3-padding-large w3-border w3-wide w3-text-light-grey w3-center light-text"
        style="
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          -ms-transform: translate(-50%, -50%);
          padding: 12px 24px;
          border: 1px solid #ccc;
        "
      >
        <h1 class="w3-hide-medium w3-hide-small w3-xxxlarge">IT Consulting</h1>
        <h3 class="w3-hide-medium w3-hide-small">& Services</h3>
      </div>
    </div>
    <div class="row-of-side-columns">
      <div class="column bordered">
        <h1>Our workfields</h1>
        <p>Find out about our areas of expertise</p>
        <img class="img-card" src="~/static/areas.jpg" alt="go to areas" />
        <button class="but" @click="goTo('our_workfields')">
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
        <button class="but" @click="goTo('our_team')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
    </div>
    <div class="row2">
      <div
        class="about-contact-homePage"
        style="background-image: linear-gradient(to right, #008080, #6a5acd)"
      >
        <h1 class="anim-l-r light-text" style="padding-right: 50%">About us</h1>
        <p class="anim-l-r light-text" style="padding-right: 50%">
          Know more about our company
        </p>
        <button class="but" style="padding-right: 50%" @click="goTo('about')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div
        class="about-contact-homePage"
        style="background-image: linear-gradient(to left, #191970, #8b008b)"
      >
        <h1 class="anim-r-l light-text" style="padding-left: 50%">
          Contact us
        </h1>
        <p
          class="anim-r-l light-text"
          style="padding-left: 50%; text-align: right"
        >
          Find our contact information
        </p>
        <button
          class="but"
          style="padding-left: 50%"
          @click="goTo('contact_us')"
        >
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  layout: 'PageLayout',
  methods: {
    goTo(place) {
      this.$router.push({ path: this.$route.path + place })
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
  .row-of-side-columns {
    margin-top: 0px;
    position: relative;
  }
  .row2 {
    width: 100%;
    flex-direction: row;
  }
  .column {
    width: 90%;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) {
  .row-of-side-columns {
    margin-top: -50px;
  }
  .row2 {
    width: 100%;
    flex-direction: row;
  }
  .column {
    width: 45%;
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
  animation: right_to_left 3s ease;
}
.anim-l-r {
  animation: left_to_right 3s ease;
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
