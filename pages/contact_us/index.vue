<template>
  <div>
    <SectionTitle
      title="Contact us"
      subtitle="We are happy to talk to you"
      image="/contactUsResized.jpg"
    />
    <!-- <nuxt-link :to="$route.path + '/the game'"> ciao </nuxt-link> -->
    <div class="row-of-side-columns">
      <div class="column bordered c">
        <div>
          <h2>Contact Information</h2>
        </div>
        <ContactCard :first="firstContact" :second="secondContact" />
      </div>
      <div class="column bordered c">
        <div>
          <h2>Our offices</h2>
        </div>
        <ContactCard :first="firstAddress" :second="secondAddress" />
      </div>
      <div class="column bordered m">
        <div>
          <h2>Maps</h2>
        </div>
        <div style="width: 90%">
          <Map class="map bordered" />
        </div>
      </div>
    </div>
    <div class="cont-div">
      <h2
        style="
          padding: 1.5%;
          padding-bottom: 0%;
          color: rgb(63, 63, 63);
          text-align: center;
        "
      >
        Reach us if you have some questions
      </h2>
      <button class="but" style="padding-bottom: 2%" @click="goTo('/_form')">
        <ButtonWithText :title="'Contact Form'" />
      </button>
    </div>
  </div>
</template>

<script>
import ContactCard from '~/components/contacts/ContactCard.vue'
import Map from '~/components/contacts/map/Map.vue'
export default {
  components: {
    Map,
    ContactCard,
  },
  layout: 'PageLayout',
  data: function () {
    return {
      firstContact: {
        title: 'New York Office phone',
        descr: '+1 212-586-5530',
        buttonTitle: 'Call',
      },
      secondContact: {
        title: 'Milan Office phone',
        descr: '+39 02 481 6608',
        buttonTitle: 'Call',
      },
      firstAddress: {
        title: 'New York Office address',
        descr: '1651 Broadway, New York, NY 10019, United States',
        buttonTitle: 'Directions',
      },
      secondAddress: {
        title: 'Milan Office address',
        descr: 'Via Buonarroti, 6 Milano, Italy',
        buttonTitle: 'Directions',
      },
    }
  },
  // meta
  head: {
    title: 'Contacts',
  },
  meta: [
    {
      hid: 'constacts',
      name: 'description',
      content:
        'Ring us or send us an email, or come to visit us in our offices',
    },
  ],
  methods: {
    goTo(place) {
      this.$router.push({ path: this.$route.path + place })
    },
  },
}
</script>

<style scoped>
@import '~/assets/style.css';

.map {
  height: 30vh;
  min-width: 30vw;
  margin-bottom: 2%;
}

.but {
  background-color: transparent;
  border: transparent;
}

.but:focus {
  outline: none;
}
.c {
  border: 10px solid;
  border-image-slice: 1;
  border-width: 5px;
  border-image-source: linear-gradient(to top, #9e9e9e, #3ad5c0);
}

.m {
  border: 10px solid;
  border-image-slice: 1;
  border-width: 5px;
  border-image-source: linear-gradient(to top, #9e9e9e, #3ad5c0);
}
@media screen and (max-width: 600px) {
  .row-of-side-columns {
    margin-top: 0px;
    position: relative;
    justify-content: center;
  }
  .m {
    width: 90%;
  }
  .c {
    width: 90%;
  }
}
@media screen and (min-width: 600px) and (max-width: 992px) {
  .row-of-side-columns {
    margin-top: -90px;
    justify-content: center;
  }
  .m {
    width: 100%;
  }
  .c {
    width: 45%;
  }
}
@media screen and (min-width: 992px) {
  .m {
    width: 40%;
    align-items: center;
  }
  .c {
    width: 20%;
  }
}
.cont-div {
  background-image: linear-gradient(to top, rgba(0, 20, 85, 0.45), white);
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
