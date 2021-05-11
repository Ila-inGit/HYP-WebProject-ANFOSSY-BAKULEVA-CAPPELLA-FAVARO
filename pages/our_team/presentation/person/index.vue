<!--
  page of a single person
-->

<template>
  <main class="container">
    <div>
      <people-title
        :title="people.title"
        :subtitle="people.position"
        :contacts="people.contacts"
        :image="people.image"
        :bg-color="'#f0f8ff'"
        :text-color="'#0f0f0f'"
      ></people-title>
      <people-about
        :title1="'About ' + people.title"
        :description="people.description"
        :people-id="$router.currentRoute.query.peopleId"
        :bg-color="'#0f0f0f'"
        :text-color="'#f0f8ff'"
        :title="'Working Area'"
      ></people-about>
      <people-products
        :title="'Developed products'"
        :people-id="$router.currentRoute.query.peopleId"
        :bg-color="'#0f0f0f'"
        :text-color="'#f0f8ff'"
      ></people-products>
    </div>
  </main>
</template>

<script>
import db from 'static/fake_db.json'
import PeopleTitle from '~/components/people/PeopleTitle'
export default {
  components: {
    PeopleTitle,
  },
  layout: 'PageLayout',
  props: {
    title: {
      type: String,
      default: () => '',
    },
    description: {
      type: String,
      default: () => '',
    },
    image: {
      type: String,
      default: () =>
        'https://www.stoneycreekwinepress.com/assets/images/labels/large/medium-square.png',
    },
  },
  data() {
    let people = {
      id: '',
      title: "Please, don't play with URLs...",
      contacts: '',
      position: '',
      description: '',
      image: '',
    }
    const area = {
      title: "Please, don't play with URLs...",
      description: '',
      image: '',
    }
    db.people.forEach((element) => {
      if (element.id === this.$router.currentRoute.query.peopleId) {
        people = element
      }
    })
    return { people: people, area: area }
  },
}
</script>

<style></style>
