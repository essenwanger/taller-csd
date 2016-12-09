Feature:
	Como jugador
	Quiero Iniciar el juego
	Para seleccionar mi personaje y el de mi oponente

Scenario: Al iniciar el juego mostrar Bienvenida
	Given abro el juego
	When seleccion "iniciar"
	Then debo ver "Bienvenido a Faquiu"