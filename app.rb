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
