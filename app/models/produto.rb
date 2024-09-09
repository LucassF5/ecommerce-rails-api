class Produto < ApplicationRecord

  belongs_to :category, optional: true

  validates :nome, presence: true
  validates :descricao, presence: true
  # validates :preco, presence: true
  validates :quant_estoque, presence: true
end
