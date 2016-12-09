Feature:
    Como: Víctor Ruedas
    Quiero: Poder volver a jugar cuando termine el juego
    Para: Volver a eliminar a un objetivo
    
Scenario:  "Volver al inicio del juego"
  Given ingreso a iniciar
  When ingreso fuerza "5"
  And seleccion "lanzar"
  And seleccion "volver"
  Then debo ver "Bienvenido a Faquiu"
  
