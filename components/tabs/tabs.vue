<template>
  <div>
    <div class="tabs">
      <ul>
        <li
          v-for="tab in tabs"
          :key="tab.name"
          :class="{ 'is-active': tab.isActive }"
          @click="selectTab(tab)"
        >
          <a :href="tab.href" @click="selectTab(tab)">{{ tab.name }}</a>
        </li>
      </ul>
    </div>
    <div class="tabs-details">
      <slot></slot>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return { tabs: [] }
  },
  created() {
    this.tabs = this.$children
  },
  methods: {
    selectTab(selectedTab) {
      this.tabs.forEach((tab) => {
        tab.isActive = tab.name === selectedTab.name
      })
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

.tabs li {
  width: 150px;
  float: left;
  margin: 0 2px 0 0;
  padding: 10px 5px;
  text-align: center;
  background-color: #fafafc;
  border-radius: 3px;
}

.tabs li.is-active {
  background-color: #c8c8cb !important;
  color: black !important;
}
.tabs li a {
  text-decoration: none;
  color: #1c1b1b;
}

.tabs li:hover {
  cursor: pointer;
}
.tabs ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

.tabs-details {
  width: 100%;
  min-height: 250px;
  height: auto;
  border-radius: 3px;
  padding: 20px 15px;
  background-color: #fdfdff;
  color: darkslategray;
  clear: both;
}

.tabs a {
  display: inline;
  color: black !important;
}
</style>
