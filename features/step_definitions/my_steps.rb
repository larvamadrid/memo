Given(/^Accedo Tablero$/) do
	visit '/'
end

Then(/^Título "(.*?)"$/) do |titulo|
	last_response.body.should =~ /#{titulo}/m
end

