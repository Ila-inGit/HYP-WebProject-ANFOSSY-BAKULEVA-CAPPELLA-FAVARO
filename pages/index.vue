<!--
  homepage  @click="$emit('click')"
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
        <button class="but" @click="goTo('our_workfields')">See more</button>
      </div>
      <div class="column">
        <h1>Our products</h1>
        <p>See everything we can offer you</p>
        <img
          src="https://d3qy1pxzcopg5z.cloudfront.net/wp-content/uploads/2018/06/29095115/digital-transformation-technological-innovations.jpg"
        />
        <button class="but" @click="goTo('our_products')">See more</button>
      </div>
      <div class="column">
        <h1>Our team</h1>
        <p>Discover the people behind this company</p>
        <img
          src="https://www.culturarsc.com/wp-content/uploads/2020/10/StudentFinance.jpg"
        />
        <button class="but" @click="goTo('our_team')">See more</button>
      </div>
      <div>
        <div class="card">
          <h1>About us</h1>
          <p>Know more about our company</p>
          <button class="but" @click="goTo('about')">See more</button>
        </div>
        <div class="card">
          <h1>Contact us</h1>
          <p>Find our contact information</p>
          <button class="but" @click="goTo('contact_us')">See more</button>
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
      this.$router.push({ path: this.$route.path + '/' + place })
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
  padding: 5px;
  margin: 5px 10px;
  color: #0f0f0f;
  position: relative;
  font-size: small;
  font-style: italic;
  z-index: 2;
}

.but:hover {
  cursor: pointer;
  background-color: rgba(0, 140, 186, 0.6);
  color: #0f0f0f;
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

.card {
  height: auto;
  width: 80%;
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

.column {
  display: grid;
  height: auto;
  width: 15%;
  padding-right: 2%;
  padding-left: 2%;
  padding-top: 1%;
  padding-bottom: 1%;
  border-style: solid;
  border: 1% #999;
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
