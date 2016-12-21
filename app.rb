require 'sinatra'
require_relative "./lib/memotest.rb"

get '/' do
	@@filas = 2
	@@columnas = 2
	@@memo = Memotest.new
	erb:tablero
end

post '/presionaBoton/:numero' do
	error = false

	@numero = params['numero']

	if @numero == '1'
		@@memo.presiona_1
	elsif @numero == '2'
		@@memo.presiona_2
	elsif @numero == '3'
		@@memo.presiona_3
	elsif @numero == '4'
		@@memo.presiona_4
	else
		error = true
	end

	if error == false
		@resultado  = @@memo.muestra_resultado 	
	else
		@resultado = @numero
	end

	erb:tablero
end
