class AddCategoryToProduto < ActiveRecord::Migration[7.1]
  def change
    add_reference :produtos, :category, null: false, foreign_key: true
  end
end
