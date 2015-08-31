class AddDateToEvenement < ActiveRecord::Migration
  def change
    add_column :evenements, :date, :date
  end
end
