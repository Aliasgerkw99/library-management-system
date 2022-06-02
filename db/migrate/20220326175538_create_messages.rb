class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.integer :sender
      t.integer :receiver
      t.string :content
      t.date :mdate
      t.time :mtime

      t.timestamps
    end
  end
end
