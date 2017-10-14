class CreateProductquoteunregis < ActiveRecord::Migration[5.1]
  def change
    create_table :productquoteunregis do |t|
      t.integer :quantity
      t.integer :param1
      t.integer :param2
      t.string :param3
      t.integer :param4
      t.string :param5
      t.references :quoteunregistered, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
