class Receita < ActiveRecord::Base
	validates_presence_of :conteudo, :message => " - deve ser preenchida"

	validates_presence_of :prato_id
	validates_associated  :prato
end
