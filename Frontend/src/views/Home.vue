<template>
  <div>
    <v-container>
      <v-text-field
        label="50 000 лекарств и товаров"
        hide-details="auto"
        color="#F8F9FA"
        class="mb-2"
        solo
      >
        <template v-slot:prepend-inner>
          <img src="@/assets/search.svg" />
        </template>  
        <template v-slot:append>
          <div class="search-container">
            <img src="@/assets/microphone.svg" />
            <img src="@/assets/camera.svg" />
          </div>
        </template>
      </v-text-field>
      <h3 class="mb-3">Еаптека рекомендует</h3>
      
      <v-row style="justify-content: space-between; margin: auto;">
        <StoryDialog name="Профилактика сезонной простуды" />
        <StoryDialog name="Маски и антисептики" />
        <StoryDialog name="Безопасный загар" />
      </v-row>

      <h3 class="mb-2 mt-5">Товары дня <span class="goods-count-span">{{ goodsCount }}</span></h3>

      <v-row class="good-line">
        <GoodCard title="Лекарство, таблетки, 3 мг, 20 шт." :currentPrice="239"  :oldPrice="255" />
        <GoodCard title="Лекарство, таблетки, 3 мг, 20 шт." :currentPrice="239"  :oldPrice="255" />
      </v-row>

      <v-row class="good-line">
        <GoodCard title="Лекарство, таблетки, 3 мг, 20 шт." :currentPrice="239"  :oldPrice="255" />
        <GoodCard title="Лекарство, таблетки, 3 мг, 20 шт." :currentPrice="239"  :oldPrice="255" />
      </v-row>
    </v-container>
  </div>
</template>

<script>
  import { isMobile } from '@/utils/helpers.js'
  import AwesomeVueStarRating from 'awesome-vue-star-rating'
  import StoryDialog from '@/components/StoryDialog.vue'
  import GoodCard from '@/components/GoodCard.vue'

  export default {
    name: 'Home',
    components: {
      AwesomeVueStarRating,
      StoryDialog,
      GoodCard
    },
    data() {
      return {
        isMobile: false,

        goodsCount: 6,
        image: "http://1.bp.blogspot.com/-8PfnHfgrH4I/TylX2v8pTMI/AAAAAAAAJJ4/TICBoSEI57o/s1600/search_by_image_image.png"
      }
    },

    created() {
      this.isMobile = isMobile()
    }
  }
</script>

<style scoped>
  .search-container {
    display: grid;
    grid-template-columns: 2em 2em;
  }

  .good-line {
    justify-content: space-between; 
    margin: auto;
  }

  .goods-count-span {
    font-family: Roboto;
    font-style: normal;
    font-weight: normal;
    font-size: 14px;
    line-height: 14px;

    color: #96999D;

    text-align: center;
    letter-spacing: 0.4px;
  }
</style>