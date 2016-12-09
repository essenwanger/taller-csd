Given(/^ingreso a la aplicacion$/) do
  visit '/'
end

When(/^seleccion "([^"]*)"$/) do |texto|
  click_button(texto)
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Given(/^ingreso a iniciar$/) do
  visit '/'
  click_button("iniciar")
end

When(/^ingreso fuerza "([^"]*)"$/) do |fuerza|
  fill_in("fuerza", :with => fuerza)
end

When(/^seleccion "([^"]*)" en ambiente "([^"]*)" y retorna "([^"]*)"$/) do |texto, ambiente, resultado|
  find("#ambiente", :visible => false).set ambiente
  find("#resultado", :visible => false).set resultado
  click_button(texto)
end

When(/^seleccion "([^"]*)" en ambiente "([^"]*)" con resultado "([^"]*)" y viento "([^"]*)"$/) do |caption, ambiente, resultado, viento|
  find("#ambiente", :visible => false).set ambiente
  find("#resultado", :visible => false).set resultado
  find("#viento", :visible => false).set viento
  click_button(caption)
end