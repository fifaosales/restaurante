class Qualificacao < ActiveRecord::Base
	validates_presence_of :nota, :message => " - deve ser preenchido"
	validates_presence_of :valor_gasto, :message => " - deve ser preenchido"
	validates_numericality_of :nota,
				  :greather_than_or_equal_to => 0,
				  :less_than_or_equal_to => 10,
				  :message => " - deve ser um número entre 0 e 10"
	validates_numericality_of :valor_gasto,
				  :greather_than => 0,
				  :message => " - deve ser maior que 0"
	validates_presence_of :cliente_id, :padaria_id
	validates_presence_of :cliente, :padaria
	belongs_to :padaria
	belongs_to :cliente
	has_many :comentarios, :as => :comentavel
end
