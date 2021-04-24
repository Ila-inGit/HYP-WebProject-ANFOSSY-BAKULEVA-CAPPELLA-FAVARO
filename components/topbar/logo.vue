<template>
  <div>
    <link
      rel="stylesheet"
      href="//fonts.googleapis.com/css?family=Roboto:400,500,700,400italic|Material+Icons"
    />
    <div class="TitleContainer">
      <img
        class="Logo"
        src="https://childreninspiredbyyoga.com/wp-content/uploads/2014/01/spider-pose-blog-header.png"
      />
      <h1 class="Title">Surf the Spider House</h1>
      <button class="Button" @click="showMenu = !showMenu">&#9776;</button>
    </div>
    <div :hidden="!showMenu">
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
.TitleContainer {
  display: flex;
  justify-content: flex-start;
  flex-wrap: wrap;
  box-sizing: border-box;
  height: 10vh;
  width: 100vw;
}

.Title {
  display: flex;
  align-self: center;

  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 5vh;
  color: #35495e;
  letter-spacing: 1px;
}

.Logo {
  height: 100%;
  width: auto;
}

.Button {
  display: flex;
  align-self: center;
  font-size: 5vh;
  background-color: transparent;
  border-color: transparent;
}
</style>
