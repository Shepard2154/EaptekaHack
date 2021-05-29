<template>
<div class="story">
  <StoryCard class="story-card" :name="name" :style="{ backgroundImage: 'url(' + require('../assets/story1.jpg') + ')' }" />
  <v-dialog
    v-model="dialog"
    width="20em"
    height="10em"
    activator=".story"
    :eager="true"
  >
    <v-card>
      <v-card-title>
        История
      </v-card-title>

      <v-card-text>
        <Story :slides="[`${this.name}`]" />
      </v-card-text>

      <v-divider></v-divider>

      <v-card-actions>
        <v-btn
          color="primary"
          text
          @click="dialog = false"
        >
          Закрыть
        </v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
</div>
</template>

<script>
import StoryCard from '@/components/StoryCard.vue'
import Story from '@/components/Story.vue'

export default {
  name: 'StoryDialog',
  components: {
    StoryCard,
    Story
  },
  props: {
    name: String,
  },
  data() {
    return {
      dialog: false
    }
  },
}
</script>

<style scoped>
  .story-card {
    background-size: cover;
  }
</style>