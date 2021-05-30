<!--
  homepage
-->

<template>
  <div class="container">
    <div class="row1">
      <div class="column">
        <h1>Our workfields</h1>
        <p>Find out about our areas of expertise</p>
        <img src="~/static/areas.jpg" alt="go to areas" />
        <button class="but" @click="goTo('our_workfields')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div class="column">
        <h1>Our products</h1>
        <p>See everything we can offer you</p>
        <img src="~/static/prod.jpg" alt="go to products" />
        <button class="but" @click="goTo('products')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div class="column">
        <h1>Our team</h1>
        <p>Discover the people behind this company</p>
        <img src="~/static/people.jpg" alt="go to people" />
        <button class="but" @click="goTo('our_team')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
    </div>
    <div class="row2">
      <div class="home-card">
        <h1>About us</h1>
        <p>Know more about our company</p>
        <button class="but" @click="goTo('about')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div class="home-card">
        <h1>Contact us</h1>
        <p>Find our contact information</p>
        <button class="but" @click="goTo('contact_us')">
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
/** container wraps two rows */
.container {
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  align-self: center;
  align-items: stretch;
  flex-shrink: 0;
}
/** row1 made of section columns */
.row1 {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-evenly;
  align-items: stretch;
  padding-top: 2%;
  padding-bottom: 2%;
}
/** row2 made of company columns */
.row2 {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
  align-items: stretch;
  padding-top: 2.5%;
  padding-bottom: 2.5%;
}
/* column contains the sections */
.column {
  display: flex;
  border-style: solid;
  border-color: #999;
  border-radius: 10px;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: center;
  margin: 1%;
}

/* home card contains the about and contact us sections */
.home-card {
  display: flex;
  border-style: solid;
  border-color: #999;
  border-radius: 10px;
  flex-direction: column;
  justify-items: space-evenly;
  align-items: center;
  margin: 1%;
}

/* the size of the columns is based on the screen size */
@media screen and (max-width: 600px) {
  .row1 {
    width: 100%;
  }
  .row2 {
    width: 100%;
    flex-direction: row;
  }
  .column {
    width: 90%;
  }
  .home-card {
    width: 100%;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) {
  .row1 {
    width: 100%;
  }
  .row2 {
    width: 100%;
    flex-direction: row;
  }
  .column {
    width: 45%;
  }
  .home-card {
    width: 45%;
  }
}
@media screen and (min-width: 992px) {
  .container {
    flex-direction: row;
  }
  .row1 {
    width: 75%;
  }
  .row2 {
    width: 20%;
    flex-direction: column;
  }
  .column {
    width: 30%;
  }
  .home-card {
    width: 100%;
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

img {
  width: 80%;
}
</style>
