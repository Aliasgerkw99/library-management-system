class AddReqdateToReports < ActiveRecord::Migration[7.0]
  def change
    add_column :reports, :reqdate, :date
  end
end
