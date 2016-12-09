Feature:
    Como: Víctor Ruedas
    Quiero: Ingresar al juego
    Para: Empezar a jugar
    
Scenario: "Ingreso y verifico que sea el juego 'Faquiu'"
  Given ingreso a la aplicacion
  Then debo ver "Faquiu"
  