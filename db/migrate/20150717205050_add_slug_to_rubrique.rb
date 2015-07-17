class AddSlugToRubrique < ActiveRecord::Migration
  def change
    add_column :rubriques, :slug, :string
    add_index :rubriques, :slug, unique: true
  end
end
