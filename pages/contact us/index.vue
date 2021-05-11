<template>
  <div>
    <SectionTitle
      title="Contact us"
      subtitle="Description of the area of contact us"
    />
    <nuxt-link :to="$route.path + '/the game'"> ciao </nuxt-link>
    <div class="row">
      <div class="card-contacts">
        <div>
          <h2>Contact Information</h2>
        </div>
        <ContactCard :first="firstContact" :second="secondContact" />
      </div>
      <div class="card-contacts">
        <div>
          <h2>Our officies</h2>
        </div>
        <ContactCard :first="firstAddress" :second="secondAddress" />
      </div>
      <div class="card-contacts">
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
        buttonTitle: 'Call',
      },
      secondContact: {
        title: 'Milan Office phone',
        buttonTitle: 'Call',
      },
      firstAddress: {
        title: 'New York Office address',
        buttonTitle: 'Directions',
      },
      secondAddress: {
        title: 'New York Office address',
        buttonTitle: 'Directions',
      },
    }
  },
}
</script>

<style scoped>
.map {
  height: 400px;
  max-width: auto;
  border: #333 solid;
  border-radius: 5px;
}
.card-contacts {
  border: #333 solid;
  padding: 15px;
  flex: auto;
  margin: 10px;
}
.row {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: stretch;
}
</style>
