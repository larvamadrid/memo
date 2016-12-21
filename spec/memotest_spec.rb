require_relative "../lib/memotest.rb"

describe "Game de memoTest" do

	it "Verifica que los dos botones se hayan presionado " do
		memo = Memotest.new
		memo.muestra_resultado.should == "No ha presionado los dos botones necesarios."
	end

	it "Presiona boton 1 y boton 2" do
		memo = Memotest.new
		memo.presiona_1
		memo.presiona_2
		memo.muestra_resultado.should == ":( - no son iguales"
	end
	it "Presiona boton 1 y boton 3" do
		memo = Memotest.new
		memo.presiona_1
		memo.presiona_3
		memo.muestra_resultado.should == ":( - no son iguales"
	end
	it "Presiona boton 1 y boton 4" do
		memo = Memotest.new
		memo.presiona_1
		memo.presiona_4
		memo.muestra_resultado.should == "OK - son iguales"
	end
end

