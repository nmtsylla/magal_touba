class AddViewCountToEvenement < ActiveRecord::Migration
  def change
    add_column :evenements, :view_count, :integer
  end
end
