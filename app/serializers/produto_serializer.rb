class ProdutoSerializer < ActiveModel::Serializer
  attributes :id, :nome, :preco, :descricao, :quant_estoque

  belongs_to :category
end
