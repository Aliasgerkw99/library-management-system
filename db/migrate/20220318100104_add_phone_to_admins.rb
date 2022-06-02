class AddPhoneToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :phone, :string
  end
end
