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