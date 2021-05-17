<!--
  homepage
-->

<template>
  <div class="container">
    <div class="row">
      <div class="column">
        <h1>Our workfields</h1>
        <p>Find out about our areas of expertise</p>
        <img
          src="https://mercado.com.ar/wp/wp-content/uploads/2020/12/2_tecnologia.jpg"
        />
        <button class="but" @click="goTo('our_workfields')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div class="column">
        <h1>Our products</h1>
        <p>See everything we can offer you</p>
        <img
          src="https://d3qy1pxzcopg5z.cloudfront.net/wp-content/uploads/2018/06/29095115/digital-transformation-technological-innovations.jpg"
        />
        <button class="but" @click="goTo('products')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div class="column">
        <h1>Our team</h1>
        <p>Discover the people behind this company</p>
        <img
          src="https://www.culturarsc.com/wp-content/uploads/2020/10/StudentFinance.jpg"
        />
        <button class="but" @click="goTo('our_team')">
          <ButtonWithText :title="'See more'" />
        </button>
      </div>
      <div>
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
.container {
  margin: 0 auto;
  justify-content: center;
  align-items: flex-start;
  text-align: center;
}

.but {
  padding: 20px;
  background-color: transparent;
  border: transparent;
}

.but:focus {
  outline: none;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}

.home-card {
  height: auto;
  width: 80%;
  padding-right: 2.5%;
  padding-left: 2.5%;
  padding-top: 1%;
  padding-bottom: 1%;
  border-style: solid;
  border-color: #999;
  border-radius: 10px;
  flex-direction: column;
  justify-content: flex-start;
  margin: 1%;
}

.home-card:hover {
  color: #008cba;
}

.column {
  display: grid;
  height: auto;
  width: 15%;
  padding-right: 2%;
  padding-left: 2%;
  padding-top: 1%;
  padding-bottom: 1%;
  border-style: solid;
  border-color: #999;
  border-radius: 10px;
  flex-direction: column;
  justify-content: space-evenly;
  margin: 0.5%;
}

.column:hover {
  color: #008cba;
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
  padding-left: 5%;
  justify-content: left;
  overflow: auto;
  float: left;
}

img {
  height: 90%;
  width: 90%;
  padding-right: 2.5%;
  padding-left: 2.5%;
  padding-top: 1%;
  padding-bottom: 1%;
  margin: 1%;
  justify-content: center;
}
</style>
