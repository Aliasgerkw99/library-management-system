class AddAlladminsToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :alladmins, :integer
  end
end
