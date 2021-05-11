<!--
  page of a single person
-->

<template>
  <main class="container">
    <div>
      <people-title
        :title="person.Name"
        :subtitle="person.Role"
        :description="person.Bio"
        :contacts="person.Email"
        :image="person.Picture"
        :bg-color="'#f0f8ff'"
        :text-color="'#0f0f0f'"
      />
      <related-items-preview
        :parent-id="person.ID"
        :parent-type="'person'"
        :child-type="'area'"
        :bg-color="'#0f0f0f'"
        :text-color="'#f0f8ff'"
        :title="'Working Areas'"
      />
      <related-items-preview
        :title="'Developed products'"
        :parent-id="person.ID"
        :parent-type="'person'"
        :child-type="'product'"
        :bg-color="'#0f0f0f'"
        :text-color="'#f0f8ff'"
      />
    </div>
  </main>
</template>

<script>
import axios from 'axios'
import PeopleTitle from '~/components/people/PeopleTitle'
import RelatedItemsPreview from '~/components/RelatedItemsPreview.vue'
export default {
  components: {
    PeopleTitle,
    RelatedItemsPreview,
  },
  layout: 'PageLayout',
  async asyncData({ route }) {
    const { id } = route.query
    const { data } = await axios.get(`${process.env.BASE_URL}/api/person/${id}`)
    const person = data
    return { person }
  },
}
</script>

<style></style>
