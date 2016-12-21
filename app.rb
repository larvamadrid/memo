require 'sinatra'
require_relative "./lib/memotest.rb"

get '/' do
	@@memo = Memotest.new
	erb:tablero
end

post '/presionaBoton1' do
	@@memo.presiona_1
	@resultado  = @@memo.muestra_resultado 	
	erb:tablero
end

post '/presionaBoton2' do
	@@memo.presiona_2
	@resultado  = @@memo.muestra_resultado 	

	erb:tablero
end

post '/presionaBoton3' do
	@@memo.presiona_3
	@resultado  = @@memo.muestra_resultado 	
	erb:tablero
end
post '/presionaBoton4' do
	@@memo.presiona_4
	@resultado  = @@memo.muestra_resultado 	
	erb:tablero
end
