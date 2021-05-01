<template>
  <div>
    <link
      rel="stylesheet"
      href="//fonts.googleapis.com/css?family=Roboto:400,500,700,400italic|Material+Icons"
    />
    <div class="titleContainer">
      <img
        class="logo"
        src="https://childreninspiredbyyoga.com/wp-content/uploads/2014/01/spider-pose-blog-header.png"
      />
      <h1 class="title">Surf the Spider House</h1>
      <button class="button" @click="showMenu = !showMenu">&#9776;</button>
    </div>
    <div :hidden="!showMenu" @click="showMenu = false">
      <TopbarMenu />
    </div>
  </div>
</template>

<script>
export default {
  data: () => ({
    showMenu: false,
  }),
}
</script>

<style>
.titleContainer {
  display: flex;
  justify-content: flex-start;
  flex-wrap: wrap;
  box-sizing: border-box;
  height: 10vh;
  width: 100vw;
}

.title {
  display: flex;
  align-self: center;

  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 5vh;
  color: #ffffff;
  letter-spacing: 1px;
  padding-left: 2%;
  padding-right: 2%;
}

.logo {
  height: 100%;
  width: auto;
  border: #333 solid;
}

.button {
  display: flex;
  align-self: center;
  font-size: 5vh;
  background-color: transparent;
  border-color: transparent;
  color: #ffffff;
}

.button:hover {
  background-color: #ddd;
  color: black;
}
</style>
