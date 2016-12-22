class Memotest
	def initialize
		@filas = 4
		@columnas = 4
		@valor1 = ""
		@valor2 = ""
		@boton_presionado =""
		@presionado = []
		@correctos = []
		@valoresbotones =["A","B","B","A"]

	end
	def esta_presionado presionado
		if @presionado.include? presionado 
			return true
		elsif @correctos.include? presionado
			return true
		else 
			return false
		end
		#return (@presionado.include? presionado) or (@correctos.include? presionado)
	end

	def valor_boton presionado
		if esta_presionado(presionado) 
			return @valoresbotones[presionado-1]
		else
			return "-"
		end
	end
	def reiniciar
		@presionado = []
		@correctos = []
		@boton_presionado = []
		@valor1 = ""
		@valor2 = ""
	end
	def presiona_1
		if (@valor1 == "")
			@valor1 ="A"
		else
			@valor2 ="A"
		end
		@boton_presionado ="b1"
		@presionado.push(1)
	end

	def presiona_2
		if (@valor1 == "")
			@valor1 ="B"
		else
			@valor2 ="B"
		end
		@boton_presionado ="b2"
		@presionado.push(2)
	end

	def presiona_3
		if (@valor1 == "")
			@valor1 ="B"
		else
			@valor2 ="B"
		end
		@boton_presionado ="b3"
		@presionado.push(3)
	end

	def presiona_4
		if (@valor1 == "")
			@valor1 ="A"
		else
			@valor2 ="A"
		end
		@boton_presionado ="b4"
		@presionado.push(4)
	end

	def muestra_resultado 
		if (@valor1 == "" or @valor2 == "")
			@resultado = "No ha presionado los dos botones necesarios."

		elsif (@valor1 == @valor2 )
			@resultado = "OK - son iguales"
			@valor1 = ""
			@valor2 = "" 
			@correctos.push(@presionado)
		else
			@resultado = ":( - no son iguales"
			@valor1 = ""
			@valor2 = "" 
			@presionado = []
		end
		return @resultado

	end

	def boton_presionado
		if (@boton_presionado == "b1")
			
		end
	end
end

