class Prato < ActiveRecord::Base
	validates_presence_of :nome, :message => " - deve ser preenchido"
	validates_uniqueness_of :nome, :message => " - nome já existe"
	has_and_belongs_to_many :padaria
	has_one :receita
	validate :validate_presence_of_more_than_one_padaria
	private 
	def validate_presence_of_more_than_one_padaria
		errors.add("padarias", "deve haver ao menos um padaria") if restaurante.empty?
	end
end
