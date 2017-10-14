class CreateProductquotes < ActiveRecord::Migration[5.1]
  def change
    create_table :productquotes do |t|
      t.integer :quantity
      t.integer :param1
      t.integer :param2
      t.string :param3
      t.integer :param4
      t.string :param5
      t.references :quote, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
