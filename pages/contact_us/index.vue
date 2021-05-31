<template>
  <div>
    <SectionTitle title="Contact us" subtitle="We are happy to talk to you" />
    <!-- <nuxt-link :to="$route.path + '/the game'"> ciao </nuxt-link> -->
    <div class="row-of-side-columns">
      <div class="column bordered" style="width: 20%">
        <div>
          <h2>Contact Information</h2>
        </div>
        <ContactCard :first="firstContact" :second="secondContact" />
        <button class="but" @click="goTo('/_form')">
          <ButtonWithText :title="'Contact Form'" />
        </button>
      </div>
      <div class="column bordered" style="width: 20%">
        <div>
          <h2>Our offices</h2>
        </div>
        <ContactCard :first="firstAddress" :second="secondAddress" />
      </div>
      <div class="column bordered" style="width: 35%">
        <div>
          <h2>Maps</h2>
        </div>
        <div>
          <Map class="map" />
        </div>
      </div>
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
  border: 1;
  border-style: solid;
  border-color: #999;
  border-radius: 5px;
}
.but {
  background-color: transparent;
  border: transparent;
  padding-top: 4%;
}
.but:focus {
  outline: none;
}
</style>
