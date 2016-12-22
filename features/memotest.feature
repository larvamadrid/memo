Feature: Juego de la Memoria

Scenario: Pantalla de Inicio
	Given Accedo Tablero
	Then Título "Tablero Memotest"

Scenario: Presiona boton 1
	Given Accedo Tablero
	When se presiona el boton 1
	Then  veo  "Presione el siguiente."

Scenario: Presiona 2 iguales
	Given Accedo Tablero
	When se presiona el boton 1
	When se presiona el boton 7
	Then  veo  "OK - son iguales"
