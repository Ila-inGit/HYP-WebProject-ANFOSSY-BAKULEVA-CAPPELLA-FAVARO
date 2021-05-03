<template>
  <div class="tabs">
    <ul class="tabs-list">
      <li class="active" @onclick="openPart('Presentation')">
        <a href="#tab1">Presentation</a>
      </li>
      <li @onclick="openPart('tab1')">
        <a href="#tab2" @onclick="openPart('Working Areas')">Working Areas</a>
      </li>
      <li @onclick="openPart('tab1')">
        <a href="#tab3" @onclick="openPart('Developed Products')">
          Developed Products
        </a>
      </li>
    </ul>
    <div id="Presentation" class="tab active">
      <h3>Presentation</h3>
      <p>here will be something</p>
    </div>
    <div id="Working Areas" class="tab">
      <h3>Working Areas</h3>
      <p>here will be something</p>
    </div>
    <div id="Developed Products" class="tab">
      <h3>Tab3</h3>
      <p>here will be something</p>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    openPart(part) {
      let i
      const x = document.getElementsByClassName('active')
      for (i = 0; i < x.length; i++) {
        x[i].className = 'none'
      }
      document.getElementById(part).style.display = 'block'
    },
  },
}
</script>

<style scoped>
.tabs {
  width: 60%;
  height: auto;
  margin: 0 auto;
}

/* tab list item */
.tabs .tabs-list {
  list-style: none;
  margin: 0px;
  padding: 0px;
}

.tabs .tabs-list li {
  width: 150px;
  float: left;
  margin: 0px 2px 0px 0px;
  padding: 10px 5px;
  text-align: center;
  background-color: #fafafc;
  border-radius: 3px;
}

.tabs .tabs-list li:hover {
  cursor: pointer;
}

.tabs .tabs-list li a {
  text-decoration: none;
  color: #1c1b1b;
}

/* Tab content section */
.tabs .tab {
  display: none;
  width: 100%;
  min-height: 250px;
  height: auto;
  border-radius: 3px;
  padding: 20px 15px;
  background-color: #fdfdff;
  color: darkslategray;
  clear: both;
}

.tabs .tab h3 {
  border-bottom: 3px solid #1b1b1c;
  letter-spacing: 1px;
  font-weight: normal;
  padding: 5px;
}

.tabs .tab p {
  line-height: 20px;
  letter-spacing: 1px;
}

/* When active state */
.active {
  display: block !important;
}

.tabs .tabs-list li.active {
  background-color: #c8c8cb !important;
  color: black !important;
}

.active a {
  color: black !important;
}

/* media query */
@media screen and (max-width: 360px) {
  .tabs {
    margin: 0;
    width: 150%;
  }

  .tabs .tabs-list li {
    width: 80px;
  }
}
</style>
