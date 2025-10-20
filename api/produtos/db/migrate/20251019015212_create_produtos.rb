class CreateProdutos < ActiveRecord::Migration[8.0]
  def change
    create_table :produtos, id: false do |t|
      t.string :id, limit: 36, primary_key: true
      t.string :nome, null: false
      t.decimal :preco, precision: 10, scale: 2, null: false
      t.string :imagem
      t.text :descricao, null: false

      t.timestamps
    end
  end
end
