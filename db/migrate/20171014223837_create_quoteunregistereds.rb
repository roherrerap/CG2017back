class CreateQuoteunregistereds < ActiveRecord::Migration[5.1]
  def change
    create_table :quoteunregistereds do |t|
      t.string :name
      t.string :email
      t.boolean :state, :default => false

      t.timestamps
    end
  end
end
