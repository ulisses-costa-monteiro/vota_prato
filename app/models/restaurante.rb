class Restaurante < ActiveRecord::Base

	validates_presence_of :nome, :message => "nome deve ser preenchido"
	validates_presence_of :endereco, :message => "nome deve ser preenchido"
	validates_presence_of :especialidade, :message => "especialidade deve ser preenchido"

	validates_uniqueness_of :nome, :message => "nome ja cadastrado"
	validates_uniqueness_of :endereco, :message => "endereco ja cadastrado"

	validate :primeira_letra_maiuscula

	has_many :qualificacoes
	has_and_belongs_to_many :pratos

	has_many :comentarios, :as => :comentavel	

	private
	def primeira_letra_maiuscula
		errors.add("nome", "primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
	end

	has_attached_file :foto, :styles => {:medium => "300x300>", :thumb => "100x100>" }

end
