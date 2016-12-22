class Memotest
	def initialize filas, columnas
		@filas = filas
		@columnas = columnas
		@valor1 = ""
		@valor2 = ""
		@boton_presionado =""
		@presionado = []
		@correctos = []
		@valoresbotones =["-","A","C","D","B","A","C","D","B"]
		@intentos = 0
		@maximo = 5

	end
	def esta_presionado presionado
		if @intentos < @maximo
			if @presionado.include? presionado 
				return true
			elsif @correctos.include? presionado
				return true
			else 
				return false
			end
		else
			return true
		end
		#return (@presionado.include? presionado) or (@correctos.include? presionado)
	end

	def valor_boton presionado
		if esta_presionado(presionado) 
			return @valoresbotones[presionado]
		else
			return "-"
		end
	end

	def get_filas
		return @filas
	end

	def get_columnas
		return @columnas
	end
	def get_maximo
		return @maximo
	end
	def get_intentos
		return @intentos
	end

	def reiniciar
		@presionado = []
		@correctos = []
		@valor1 = ""
		@valor2 = ""
		@intentos = 0
	end
	def presiona numero
		if (@valor1 == "")
			@valor1 = @valoresbotones[numero]
			if (@presionado.size == 2 )
				@presionado = [] end
		else
			@valor2 =@valoresbotones[numero]
		end

		@presionado.push(numero)
	end

	def muestra_resultado 
		if (@valor1 == "" or @valor2 == "")
			@resultado = "No ha presionado los dos botones necesarios."
		elsif (@valor1 == @valor2 )
			@resultado = "OK - son iguales"
			@valor1 = ""
			@valor2 = "" 
			@correctos.concat(@presionado)
		else
			@resultado = ":( - no son iguales"
			@valor1 = ""
			@valor2 = "" 
			@intentos += 1
		end
		if (@correctos.size == (@filas * @columnas))
			@resultado ="WINNER"
		elsif @intentos >= @maximo
			@resultado = "LOSER"
		end
		return @resultado

	end


end

