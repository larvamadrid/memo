require_relative "../lib/memotest.rb"

describe "Game de memoTest" do

	it "Verifica que los dos botones se hayan presionado " do
		memo = Memotest.new(2,4)
		memo.muestra_resultado.should == "Presione el siguiente."
	end

	it "Presiona boton 1 y boton 2" do
		memo = Memotest.new(2,4)
		memo.presiona 1
		memo.presiona 2
		memo.muestra_resultado.should == ":( - no son iguales"
	end
	it "Presiona boton 1 y boton 3" do
		memo = Memotest.new(2,4)
		memo.presiona 1
		memo.presiona 3
		memo.muestra_resultado.should == ":( - no son iguales"
	end
	it "Presiona 2 iguales" do
		memo = Memotest.new(2,4)
		memo.presiona 1
		memo.presiona 7
		memo.muestra_resultado.should == "OK - son iguales"
	end

	it "Obtiene el valor del boton 1" do
		memo = Memotest.new(2,4)
		memo.presiona 1
		memo.valor_boton(1).should == "A"
	end

	it "Obtiene el valor del boton 2 y presiona 1" do
		memo = Memotest.new(2,4)
		memo.presiona 1
		memo.valor_boton(2).should == "-"
	end

	it "valida boton presionado" do
		memo = Memotest.new(2,4)
		memo.presiona 1
		memo.presiona 3
		memo.esta_presionado(1).should == true
		memo.esta_presionado(3).should == true
	end
	it "presiona dos botones no coincidentes y resetea los presionados." do
		memo = Memotest.new(2,4)
		memo.presiona 1
		memo.presiona 3
		memo.muestra_resultado
		memo.presiona 4
		memo.esta_presionado(1).should == false
		memo.esta_presionado(3).should == false
	end

	it "forzamos pasar por WINNER" do
		memo = Memotest.new(0,0)
		memo.muestra_resultado.should == "WINNER"
	end

end

