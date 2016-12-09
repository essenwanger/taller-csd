Feature:
    Como: Víctor Ruedas
    Quiero: Realizar mi lanzamiento
    Para: Saber si elimine a la persona que tengo en mente
    
Scenario:  "Se realizo un tiro"
  Given ingreso a la aplicacion
  When seleccion "iniciar"
  And seleccion "lanzar"
  Then debo ver "resultado"
  
