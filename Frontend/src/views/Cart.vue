<template>
	<div>
		<v-app-bar
			class="app-bar"
			color="#FFFFFF"
			elevation="0"
      >
				<v-btn icon>
          <v-icon>mdi-keyboard-backspace</v-icon>
        </v-btn>

        <v-toolbar-title>Корзина</v-toolbar-title>
  
        <v-spacer></v-spacer>
  
        <v-btn icon>
          <v-icon>mdi-delete</v-icon>
        </v-btn>
  
        <v-btn icon>
          <v-icon>mdi-share-variant</v-icon>
        </v-btn>
      </v-app-bar>

			 <v-card
          class="good-card"
          style="color: black; margin-top: 1em;"
          width="100%"
          height="14em"
          >
					<v-row>
						<v-col cols="4">
							<img src="@/assets/no_photo_good.jpg" alt="Изображение товара" />
						</v-col>	
						<v-col cols="8">
							<AwesomeVueStarRating :star="this.star" :disabled="this.disabled" :maxstars="this.maxstars" :starsize="this.starsize" :hasresults="this.hasresults" :hasdescription="this.hasdescription" :ratingdescription="this.ratingdescription" />
							<span>
							Лекарство, таблетки, 20 шт.</span>
							<p style="color: #6C757D">Производитель</p>
								<p class="nal">В наличии</p>
							<p class="old-price-span">255</p> 
							<p class="current-price-span">239</p>
							<a style="float: right">Оформить подписку</a> 
						</v-col>
					</v-row>
        </v-card>

			 <v-card
          class="good-card"
          style="color: black; margin-top: 0.2em;"
          width="100%"
          height="14em"
          >
					<v-row>
						<v-col cols="4">
							<img src="@/assets/no_photo_good.jpg" alt="Изображение товара" />
						</v-col>	
						<v-col cols="8">
							<AwesomeVueStarRating :star="this.star" :disabled="this.disabled" :maxstars="this.maxstars" :starsize="this.starsize" :hasresults="this.hasresults" :hasdescription="this.hasdescription" :ratingdescription="this.ratingdescription" />
							<span>
							Лекарство, таблетки, 20 шт.</span>
							<p style="color: #6C757D">Производитель</p>
		
							<p class="nal">В наличии</p>
	
							<p class="current-price-span" style="color: black">536</p>
							<a style="float: right">Оформить подписку</a> 
						</v-col>
					</v-row>
        </v-card>

			 <v-card
          class="good-card"
          style="color: black; margin-top: 0.2em;"
          width="100%"
          height="14em"
          >
					<v-row>
						<v-col cols="4">
							<img src="@/assets/no_photo_good.jpg" alt="Изображение товара" />
						</v-col>	
						<v-col cols="8">
							<AwesomeVueStarRating :star="this.star" :disabled="this.disabled" :maxstars="this.maxstars" :starsize="this.starsize" :hasresults="this.hasresults" :hasdescription="this.hasdescription" :ratingdescription="this.ratingdescription" />
							<span>
							Лекарство, таблетки, 20 шт.</span>
							<p style="color: #6C757D">Производитель</p>
		
							<p class="nal">В наличии</p>
	
							<p class="current-price-span" style="color: black">536</p>
							<a style="float: right">Оформить подписку</a> 
						</v-col>
					</v-row>
        </v-card>

				<v-card
          style="color: black; padding: 10px; margin-top: 0.2em;"
          width="100%"
				>
				Промокод
				</v-card>

					<v-card
						style="color: black; padding: 10px; margin-top: 0.2em;"
						width="100%"
					>
					Экономия
					<span class="pr">16 Руб.</span>
					</v-card>
	</div>
</template>

<script>
	import AwesomeVueStarRating from 'awesome-vue-star-rating'

	export default {
		name: 'Cart',
		components: {
			AwesomeVueStarRating
		},

		data() {
      return {
        isMobile: false,

        goodsCount: 6,

        //Rating block
        star: 5,
        ratingdescription: [
          {
            text: 'Poor',
            class: 'star-poor'
          },
          {
            text: 'Below Average',
            class: 'star-belowAverage'
          },
          {
            text: 'Average',
            class: 'star-average'
          },
          {
            text: 'Good',
            class: 'star-good'
          },
          {
            text: 'Excellent',
            class: 'star-excellent'
          }
        ],
        hasresults: false,
        hasdescription: false,
        starsize: 'lg', //[xs,lg,1x,2x,3x,4x,5x,6x,7x,8x,9x,10x],
        maxstars: 5,
        disabled: true
      }
    },
	}
</script>

<style scoped>
 .app-bar {
	font-style: normal;
	font-weight: normal;
	font-size: 14px;
	line-height: 16px;
	letter-spacing: 0.2px;
	color: #96999D;
 }

	.good-card {
    font-family: Nunito;
    font-style: normal;
    font-weight: normal;
    font-size: 14px;
    line-height: 14px;
    letter-spacing: 0.4px;

    padding: 10px;
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

  .current-price-span {
    font-family: Roboto;
    font-style: normal;
    font-weight: 500;
    font-size: 18px;
    line-height: 13px;
    letter-spacing: 0.4px;
    color: #FF0066;
  }

  .old-price-span {
    font-family: Roboto;
    font-style: normal;
    font-weight: 500;
    font-size: 12px;
    line-height: 13px;
    text-decoration: line-through;
    letter-spacing: 0.4px;
    color: #000000;
  }

  .current-price-span::after, .old-price-span::after {
    content: "\00a0₽";
  }

	.nal {
		font-family: Nunito;
		font-style: normal;
		font-weight: normal;
		font-size: 12px;
		line-height: 12px;

		/* identical to box height, or 100% */
		letter-spacing: 0.4px;

		/* light purple */
		color: #8168F0;
	}

	.pr::before {
		content: "\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0\00a0";
	}
</style>