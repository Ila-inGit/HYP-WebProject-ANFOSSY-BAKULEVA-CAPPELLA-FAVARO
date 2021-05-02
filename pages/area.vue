<template>
  <main class="container">
    <div>
      <section-title
        :title="'Area X'"
        :subtitle="'very little description of our the area'"
        :bg-color="'#f0f8ff'"
        :text-color="'#0f0f0f'"
      ></section-title
      ><card-with-video
        :bg-color="'#12253f'"
        :text-color="'#f0f8ff'"
        :title="'Products'"
      ></card-with-video>
      <card-with-team
        :bg-color="'#1e0045'"
        :text-color="'#f0f8ff'"
        :title="'Working Team'"
      ></card-with-team>
    </div>
  </main>
</template>
// todo routing

<script>
import SectionTitle from '~/components/SectionTitle.vue'
import CardWithVideo from '~/components/CardWithVideo.vue'
import CardWithTeam from '~/components/CardWithTeam.vue'
export default {
  components: {
    SectionTitle,
    CardWithVideo,
    CardWithTeam,
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
}
</script>

<style></style>
