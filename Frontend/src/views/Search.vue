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
			<p style="color: #6C757D">56 результатов</p>
			<hr style="border: none; height: 1px; color: #6C757D; background-color: #6C757D; margin-bottom: 1em">
			<v-row style="justify-content: space-between; width: 95%; margin: auto">
				<p style="#343A40">По популярности</p>
				<p style="#343A40">Фильтры</p>
			</v-row>
		</v-container>
	</div>
</template>

<script>
	import StoryDialog from '@/components/StoryDialog.vue'

  export default {
		name: 'Search',
		components: {
			StoryDialog
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
</style>