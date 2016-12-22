require 'sinatra'
require_relative "./lib/memotest.rb"

get '/' do

	@@memo = Memotest.new(2,4)
	@@filas = @@memo.get_filas
	@@columnas = @@memo.get_columnas
	@@maximo = @@memo.get_maximo
	@@intentos = @@maximo - @@memo.get_intentos
	erb:tablero
end


post '/reset' do
	@@memo.reiniciar
	erb:tablero
end

post '/presionaBoton/:numero' do
	error = false
	@numero = params['numero'].to_i

	if (@numero <= (@@filas *@@columnas))
		@@memo.presiona @numero
	else
		error = true
	end

	if error == false
		@resultado  = @@memo.muestra_resultado 	
	else
		@resultado = @numero
	end
	@@intentos = @@maximo - @@memo.get_intentos
	erb:tablero
end
