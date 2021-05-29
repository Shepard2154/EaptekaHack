<template>
  <v-app>
    <v-main>
      <router-view/>
      <Navbar />
    </v-main>
  </v-app>
</template>

<script>
  import Navbar from '@/components/Navbar.vue'

  export default {
    name: 'App',
    components: {
      Navbar
    }
  }
</script>
