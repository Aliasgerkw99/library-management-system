class AddAllstudentsToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :allstudents, :integer
  end
end
