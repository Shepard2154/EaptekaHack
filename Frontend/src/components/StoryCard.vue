<template>
	<v-card class="story-card">
		{{ name }}
	</v-card>
</template>

<script>
	export default {
		name: 'StoryCard',
		props: {
			name: String,
		}
	}
</script>


<style scoped>
	.story-card {
		width: 9em;
		height: 9em;

    font-family: Nunito;
    font-style: normal;
    font-weight: normal;
    font-size: 11px;
    line-height: 12px;
		color: #FFFFFF;

		/* background-size: cover; */
    padding: 10px;

    display: flex;
    align-items: flex-end;
}
</style>