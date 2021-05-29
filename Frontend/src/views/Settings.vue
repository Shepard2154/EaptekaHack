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

        <v-toolbar-title>Настройки</v-toolbar-title>
  
        <v-spacer></v-spacer>
  
        <v-btn icon>
          <v-icon>mdi-delete</v-icon>
        </v-btn>
  
        <v-btn icon>
          <v-icon>mdi-share-variant</v-icon>
        </v-btn>
      </v-app-bar>
      <v-container>
        <h3 style="margin-bottom: 2em; color: #343A40">Лекарство, капсулы, 1 мг</h3>
        <p style="color: #6C757D;">Количество</p>
        <p style="color: #96999D;">Сколько таблеток необходимо выпить за один прием</p>
        <img src="@/assets/scr.png" alt="">
        <p style="color: #6C757D;">Длительность приема</p>
        <img src="@/assets/scr2.png" alt="">
        <p style="color: #6C757D;margin-top: 1.5em; margin-bottom: 2em;">Режим приема</p>
        <v-row style="justify-content: space-evenly">
          <v-card
          style="text-align: center; padding-top: 10px; background-color: #F2F4FF"
          width="72px"
          height="72px">
          <!-- <img src="@/assets/round.svg" alt=""> -->
          *
          <img src="@/assets/burger.svg" alt="">
          <img src="@/assets/drink.svg" alt="">
          </v-card>

          <v-card
          style="text-align: center; padding-top: 10px; background-color: #F2F4FF"
          width="72px"
          height="72px">
          <img src="@/assets/burger.svg" alt="">
          *
          <img src="@/assets/drink.svg" alt="">
          </v-card>
          <v-card
          style="text-align: center; padding-top: 10px; background-color: #8168F0; color: white"
          width="72px"
          height="72px">
          <img src="@/assets/dinner.svg" alt="">
          *
          </v-card>
        </v-row>
        <p style="color: #6C757D; margin-top: 2em; margin-bottom: 2em;">Оповещения</p>
        <v-row style="justify-content: space-evenly">
        <v-card
        style="background-color: #F2F4FF"
        width="60%"
        height="3em">
          <v-row style="justify-content: space-evenly; align-items: center">
            <span>8:00</span>
            <v-switch
            v-model="switch1"
            ></v-switch>
          </v-row>
        </v-card>  

        <v-card
        style="background-color: #F2F4FF; text-align: center; position: relative; padding-top: 5px;"
        width="20%"
        height="3em">
        <img src="@/assets/Vector.svg" alt="" style="vertical-align: bottom;">
        </v-card>
        </v-row>
        <v-btn 
        width="100%"
        style="margin-top: 50px; background-color: #8168F0">
          Сохранить
        </v-btn>
      </v-container>
	</div>
</template>

<script>
	export default {
		name: 'Settings',
    data() {
      return {
        switch1: true,
      }
    }
	}
</script>
