class CreateRubriques < ActiveRecord::Migration
  def change
    create_table :rubriques do |t|
      t.string :titre
      t.string :descriptif
      t.integer :status

      t.timestamps null: false
    end
  end
end
