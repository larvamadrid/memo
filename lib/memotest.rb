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

	def reiniciar
		@presionado = []
		@correctos = []
		@boton_presionado = []
		@valor1 = ""
		@valor2 = ""
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
		if (@correctos.size != (@filas * @columnas))
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
				#@presionado = []
			end
		else
			@resultado ="WINNER"
		end
		return @resultado

	end


end

