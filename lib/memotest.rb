class Memotest
	def initialize
		@filas = 4
		@columnas = 4
		@valor1 = ""
		@valor2 = ""
		@boton_presionado =""
	end

	def presiona_1
		if (@valor1 == "")
			@valor1 ="A"
		else
			@valor2 ="A"
		end
		@boton_presionado ="b1"
	end

	def presiona_2
		if (@valor1 == "")
			@valor1 ="B"
		else
			@valor2 ="B"
		end
		@boton_presionado ="b2"
	end

	def presiona_3
		if (@valor1 == "")
			@valor1 ="B"
		else
			@valor2 ="B"
		end
		@boton_presionado ="b3"
	end

	def presiona_4
		if (@valor1 == "")
			@valor1 ="A"
		else
			@valor2 ="A"
		end
		@boton_presionado ="b4"
	end

	def muestra_resultado 
		if (@valor1 == "" or @valor2 == "")
			@resultado = "No ha presionado los dos botones necesarios."

		elsif (@valor1 == @valor2 )
			@resultado = "OK - son iguales"
			@valor1 = ""
			@valor2 = "" 
		else
			@resultado = ":( - no son iguales"
			@valor1 = ""
			@valor2 = "" 
		end
		return @resultado

	end

	def boton_presionado
		if (@boton_presionado == "b1")
			
		end
	end
end

