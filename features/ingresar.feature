Feature:
    Como: Víctor Ruedas
    Quiero: Ingresar al juego
    Para: Empezar a jugar
    
Scenario: "Ingreso y verifico que sea el juego 'Faquiu'"
  Given ingreso a la aplicacion
  Then debo ver "Faquiu"
  
Scenario: "Al iniciar el juego mostrar Bienvenida"
	Given ingreso a la aplicacion
	When seleccion "iniciar"
	Then debo ver "Bienvenido a Faquiu"
