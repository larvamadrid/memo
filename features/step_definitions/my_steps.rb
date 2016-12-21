Given(/^Accedo Tablero$/) do
	visit '/'
end

Then(/^Título "(.*?)"$/) do |titulo|
	last_response.body.should =~ /#{titulo}/m
end

When(/^se presiona el boton (\d+)$/) do |arg1|
	click_button("b"+arg1)
end

Then(/^veo  "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end

