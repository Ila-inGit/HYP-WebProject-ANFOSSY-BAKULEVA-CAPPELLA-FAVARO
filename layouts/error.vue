<template>
  <div class="flex-box-error">
    <div class="text-container">
      <h1 style="padding: 1%">Error 404</h1>
      <p style="padding: 1%">
        "Come on, pal. If you start crying, I'm gonna cry, and I'll never get
        through this."
      </p>
      <p style="padding: 1%">Sorry we couldn't find this page.</p>

      <nuxt-link to="/" style="text-decoration: none">
        <ButtonWithText title="Back to the home page" />
      </nuxt-link>
    </div>
    <div>
      <img
        src="/mike404.png"
        style="padding-top: 20%; width: 60%"
        alt="error404"
      />
    </div>
  </div>
</template>

<script>
export default {
  metaInfo: {
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    ],
  },
}
</script>

<style scoped>
.flex-box-error {
  display: flex;
  justify-content: center;
  align-items: center;
}
@media screen and (max-width: 600px) {
  .flex-box-error {
    flex-direction: column;
  }
}
</style>
