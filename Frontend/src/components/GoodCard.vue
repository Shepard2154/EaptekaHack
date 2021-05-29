<template>
	<v-card
		class="good-card"
		style="color: #6C757D"
		width="14em"
		height="17em"
		>
		<div style="margin: auto; text-align: center; margin-bottom: 1em">
			<img src="@/assets/no_photo_good.jpg" alt="Изображение товара" />
		</div>

		<span>{{ title }}</span>
		<AwesomeVueStarRating style="margin-top: 0.5em;" :star="this.star" :disabled="this.disabled" :maxstars="this.maxstars" :starsize="this.starsize" :hasresults="this.hasresults" :hasdescription="this.hasdescription" :ratingdescription="this.ratingdescription" />
		<span class="current-price-span">{{ currentPrice }}</span> 
		<span v-if="oldPrice" class="old-price-span">{{ oldPrice }}</span> 
		<a class="cart"><img src="@/assets/cart.svg" /></a>
	</v-card>
</template>

<script>
	import AwesomeVueStarRating from 'awesome-vue-star-rating'

	export default {
		name: 'GoodCard',
		components: {
			AwesomeVueStarRating
		},
		props: {
			title: String,
			currentPrice: Number,
			oldPrice: Number
		},
		data() {
			return {
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
        disabled: true,
			}
		}
	}
</script>

<style scoped>
.good-card {
    font-family: Nunito;
    font-style: normal;
    font-weight: normal;
    font-size: 12px;
    line-height: 12px;
    letter-spacing: 0.4px;

    padding: 0.5em;
  }
	.current-price-span {
    font-family: Roboto;
    font-style: normal;
    font-weight: 500;
    font-size: 18px;
    line-height: 13px;
    padding-right: 0.5em;
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
    padding-right: 2em;
    color: #000000;
  }

  .current-price-span::after, .old-price-span::after {
    content: "\00a0₽";
  }

	.cart {
    text-decoration: none;
    background-color: #8168F0;
    padding: 0.4em;
    clip-path: circle(50%);
    display: inline flow-root list-item;
  }
</style>
