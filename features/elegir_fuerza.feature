Feature:
    Como: Víctor Ruedas
    Quiero: Definir la fuerza de mi lanzamiento
    Para: Mejorar mis posibilidades de eliminar mi objetivo
    
Scenario:  "Rango de fuerza no permitido"
  Given ingreso a iniciar
  When ingreso fuerza "15"
  And seleccion "lanzar"
  Then debo ver "El valor de la fuerza no es permitida"

Scenario:  "Acerte el objetivo"
  Given ingreso a iniciar
  When ingreso fuerza "1"
  And seleccion "lanzar" en ambiente "test" y retorna "1"
  Then debo ver "El destino se hizo cargo"
  
Scenario: "ACERTAR con fuerza X en TEST con viento ON"
  Given ingreso a iniciar
  When ingreso fuerza "2"
  And seleccion "lanzar" en ambiente "test" con resultado "1" y viento "1"
  Then debo ver "Bien"
  
Scenario: "ACERTAR con fuerza X en TEST con viento OFF"
  Given ingreso a iniciar
  When ingreso fuerza "1"
  And seleccion "lanzar" en ambiente "test" con resultado "1" y viento "0"
  Then debo ver "Bien"
  
Scenario: "FALLAR con fuerza X en TEST con viento ON"
  Given ingreso a iniciar
  When ingreso fuerza "3"
  And seleccion "lanzar" en ambiente "test" con resultado "0" y viento "1"
  Then debo ver "Pucha"
  
Scenario: "FALLAR con fuerza X en TEST con viento OFF"
  Given ingreso a iniciar
  When ingreso fuerza "3"
  And seleccion "lanzar" en ambiente "test" con resultado "0" y viento "0"
  Then debo ver "Pucha"
  