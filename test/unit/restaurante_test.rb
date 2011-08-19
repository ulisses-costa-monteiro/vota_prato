require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
	fixtures :restaurantes
	def test_restaurante
		restaurante_fazano = Restaurante.new :nome => restaurantes(:fazano).nome + "1",
											 :endereco => restaurantes(:fazano).endereco + "1",
										     :especialidade => "italiana"
		assert restaurante_fazano.save, "nao conseguiu salvar. errors #{restaurante_fazano.errors.inspect}"
		restaurante_fazano_copia = Restaurante.find(restaurante_fazano.id)
		assert_equal restaurante_fazano.nome, restaurante_fazano_copia.nome

	end
end
