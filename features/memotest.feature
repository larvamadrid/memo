Feature: Juego de la Memoria

Scenario: Pantalla de Inicio
	Given Accedo Tablero
	Then Título "Tablero Memotest"

Scenario: Presiona boton 1
	Given Accedo Tablero
	When se presiona el boton 1
	Then  veo  "No ha presionado los dos botones necesarios."
