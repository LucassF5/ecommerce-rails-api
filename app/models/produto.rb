class Produto < ApplicationRecord

  validates :nome, presence: true
  validates :descricao, presence: true
  validates :preco, presence: true
  validates :quant_estoque, presence: true
end
