class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.integer :total_quantity
      t.integer :issued_quantity

      t.timestamps
    end
  end
end
