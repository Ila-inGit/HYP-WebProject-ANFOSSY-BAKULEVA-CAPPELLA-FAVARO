<template>
  <div class="footer">
    <NuxtLink class="a" to="/">Home page</NuxtLink>
  </div>
</template>

<script>
export default {}
</script>

<style>
.right {
  display: flex;
  justify-content: space-between;
  width: 100%;
  margin: auto;
  max-width: 50%;
}
.title {
  font-size: 1.3rem;
  margin-bottom: 5px;
}

/* The footer container */
.footer {
  overflow: hidden;
  background-color: #333;
  flex: auto;
}

/* footer links */
.footer a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  flex: auto;
  font-size: 1.3rem;
}

/* Links - change color on hover */
.footer a:hover {
  background-color: #ddd;
  color: black;
}
</style>
