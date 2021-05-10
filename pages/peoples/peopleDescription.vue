<template>
  <main class="container">
    <div>
      <people-description :people="people" :related-items="idList" />
    </div>
  </main>
</template>

<script>
import db from 'static/fake_db.json'
import PeopleDescription from '~/components/people/PeopleDescription'
export default {
  components: {
    PeopleDescription,
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
    const idList = []
    let people = {
      id: '',
      title: "Please, don't play with URLs...",
      contacts: '',
      position: '',
      description: '',
      image: '',
    }
    db.people.forEach((element) => {
      if (element.id === this.$router.currentRoute.query.peopleId) {
        people = element
      }
    })
    db.people.forEach((element) => {
      idList.push(element.id)
    })
    return { people: people, idList: idList }
  },
}
</script>

<style></style>
