<template>
	<v-card
	elevation="5"
	class="bar" style="border-radius: 10% 10% 0px 0px / 100% 100% 0px 0px;">
		<!-- <router-link :to="{name: 'Home'}"><img src="@/assets/navbar-icons/1plus.svg"></router-link> -->
		<router-link :to="{name: 'Home'}" class="link-home"></router-link>
		<router-link :to="{name: 'Search'}" class="link-search"></router-link>
		<router-link :to="{name: 'Cart'}" class="link-cart"></router-link>
		<router-link :to="{name: 'Settings'}" class="link-settings"></router-link>
	</v-card>
</template>

<script>
	export default {
		name: 'Navbar',

		// computed: {
		// 	itemImage() {
		// 		if (!this.selectedImage) {
		// 			return
		// 		}
		// 		const fileName = this.selectedImage.toLowerCase();
		// 		return require(`../assets/images/${fileName}.jpg`);
		// 	}
		// }
	}
</script>

<style lang="scss" scoped>
	.bar {
		display: flex;
		justify-content: space-evenly;

		min-width: 100%;
		position : fixed;
		height : 50px;
		bottom : 0;
		padding: 10px; 
	}

	.link-home::after {
		content: url('@/assets/navbar-icons/1plus.svg');
	}
	.link-search::after {
		content: url('@/assets/navbar-icons/1search.svg');
	}
	.link-cart::after {
		content: url('@/assets/navbar-icons/1cart.svg');
	}
	.link-settings::after {
		content: url('@/assets/navbar-icons/1smile.svg');
	}
</style>
