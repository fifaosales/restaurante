class Padaria < ActiveRecord::Base
	validates_presence_of :nome, :message => "O nome deve ser preenchido!"
	validates_presence_of :endereco, :message => "O endereco deve ser preenchido!"	
	validates_presence_of :especialidade, :message => "A especialidade deve ser preenchida!"
	validates_uniqueness_of :nome, :message => "Esse nome já existe!"
	validates_uniqueness_of :endereco, :message => "Esse endereço já existe!"
	validate :primeira_letra_maiuscula	
	private
	def primeira_letra_maiuscula
		errors.add(:nome, "Primeira letra do nome deve ser maiuscula!") unless /^[A-Z].*/ =~ nome
		
	end
	has_many :qualificacoes
	has_and_belongs_to_many :pratos
	has_many :comentarios, :as => :comentavel
end
