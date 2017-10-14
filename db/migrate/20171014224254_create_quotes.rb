class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.datetime :date
      t.string :email
      t.string :firstname
      t.string :lastname
      t.boolean :state, :default => false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
