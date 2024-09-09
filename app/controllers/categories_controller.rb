class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: @categories
  end

  def create
    @category = Category.new(categories_params)
    if @category.save
      render json: @category, status: :created
    else
      render json: { errors: @category.errors }, status: :unprocessable_entity
    end
  end

  def update
  end

  def delete
  end

  private

  def categories_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end

end
