class CreateEvenements < ActiveRecord::Migration
  def change
    create_table :evenements do |t|
      t.string :titre
      t.string :descriptif
      t.integer :status
      t.string :lieu
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
