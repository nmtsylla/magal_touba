class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titre
      t.string :surtitre
      t.string :soustitre
      t.text :descriptif
      t.text :contenu
      t.float :popularite
      t.references :rubrique, index: true

      t.timestamps null: false
    end
    add_foreign_key :articles, :rubriques
  end
end
