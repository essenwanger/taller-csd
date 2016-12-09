Given(/^abro el juego$/) do
  visit '/'
end

When(/^seleccion "([^"]*)"$/) do |texto|
  click_button(texto)
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end