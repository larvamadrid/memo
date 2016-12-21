class Memotest
	def initialize
		@valor1 = ""
		@valor2 = ""
	end

	def presiona_1
		if (@valor1 == "")
			@valor1 ="A"
		else
			@valor2 ="A"
		end
		return "A"
	end

	def presiona_2
		if (@valor1 == "")
			@valor1 ="B"
		else
			@valor2 ="B"
		end
		return "B"
	end

	def presiona_3
		if (@valor1 == "")
			@valor1 ="B"
		else
			@valor2 ="B"
		end
		return "B"
	end

	def presiona_4
		if (@valor1 == "")
			@valor1 ="A"
		else
			@valor2 ="A"
		end
		return "A"
	end

	def muestra_resultado 
		if (@valor1 == "" or @valor2 == "")
			@resultado = "No ha presionado los dos botones necesarios."

		elsif (@valor1 == @valor2 )
			@resultado = "OK - son iguales"
		else
			@resultado = ":( - no son iguales"
		end
	end
end

