<template>
  <div>
    <SectionTitle
      title="Contact form"
      subtitle="Send us a message!"
      image="/hexTechResized.jpg"
    />
    <form>
      <div class="form-wrap">
        <label for="fname">Name:</label>
        <input
          id="fname"
          class="fill"
          type="text"
          name="fname"
          required
        /><br />
        <label for="quantity">Phone number (7 digits):</label>
        <input
          id="quantity"
          class="fill"
          type="number"
          name="quantity"
          min="1000000"
          max="9999999"
          required
        /><br />
        <label for="email">Email:</label>
        <input
          id="email"
          class="fill"
          type="email"
          name="email"
          required
        /><br />
      </div>
      <div class="form-wrap">
        <input
          class="clicks button select-button"
          type="reset"
          onclick="alert('Thank you for contacting us, please wait for our answer')"
          value="Send"
        />
        <input class="clicks button warn-button" type="reset" value="Clear" />
      </div>
    </form>
  </div>
</template>

<script>
export default {
  layout: 'PageLayout',
  metaInfo: {
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    ],
  },
}
</script>

<style scoped>
@import '~/assets/style.css';

form {
  display: flex;
  flex-direction: column;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: stretch;
  padding: 2%;
}
.form-wrap {
  display: flex;
  flex-direction: column;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: stretch;
  padding: 1%;
}
label {
  position: relative;
  height: 10%;
  padding-top: 1vh;
  padding-right: 1vw;
  padding-bottom: 1vh;
  padding-left: 1vw;
  border: none;
  resize: inherit;
  outline: none;
  color: #0f0f0f;
  overflow: hidden;
}
@media screen and (max-width: 640px) {
  label {
    font-size: large;
  }
}
.fill {
  background: #fff;
  width: 60%;
  position: relative;
  height: 10%;
  padding-top: 1vh;
  padding-right: 1vw;
  padding-bottom: 1vh;
  padding-left: 1vw;
  resize: inherit;
  outline: none;
  border: 1px solid #ccc;
  color: #0f0f0f;
  border-top-right-radius: 5px;
  border-top-left-radius: 5px;
  border-bottom-right-radius: 5px;
  border-bottom-left-radius: 5px;
  overflow: scroll;
}
.fill:hover {
  border: 1px solid #008cba;
  color: #008cba;
}
.clicks {
  width: 30%;
  position: relative;
  height: 10%;
  padding-top: 1vh;
  padding-right: 1vw;
  padding-bottom: 1vh;
  padding-left: 1vw;
  resize: inherit;
  outline: none;
  border-top-right-radius: 5px;
  border-top-left-radius: 5px;
  border-bottom-right-radius: 5px;
  border-bottom-left-radius: 5px;
  overflow: visible;
}
</style>
