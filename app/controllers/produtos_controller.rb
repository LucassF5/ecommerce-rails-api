class ProdutosController < ApplicationController
  before_action :set_produto, only: [:show, :update, :destroy]

  def index
    produtos = Produto.all
    render json: produtos, status: :ok
  end

  def show
    if @produto
      render json: @produto
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  def create
    @produto = Produto.new(produto_params)
    if @produto.save
      render json: @produto, status: :created
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  def update
    if @produto.update(produto_params)
      render json: @produto
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @produto.destroy!
  end

  private

  def set_produto
    @produto = Produto.find(params[:id])
  end

  def produto_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    # params.require(:produto).permit(:nome, :descricao, :preco, :quant_estoque)
  end

end
