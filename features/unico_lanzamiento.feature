Feature:
    Como: Víctor Ruedas
    Quiero: Realizar mi lanzamiento
    Para: Saber si elimine a la persona que tengo en mente
    
Scenario:  "Se realizo un tiro"
  Given ingreso a iniciar
  When seleccion "lanzar"
  Then debo ver "resultado"

Scenario:  "El destino ya se hizo cargo"
  Given ingreso a iniciar
  When seleccion "lanzar" en ambiente "test" y retorna "1"
  Then debo ver "El destino se hizo cargo"
  
Scenario:  "Aun sigue vivo"
  Given ingreso a iniciar
  When seleccion "lanzar" en ambiente "test" y retorna "0"
  Then debo ver "Lamentablemente esa persona seguirá"
  
  
