class ProdutoSerializer < ActiveModel::Serializer
  attributes :id, :nome, :preco, :descricao, :quant_estoque
  puts "attributes: #{attributes}"
end
