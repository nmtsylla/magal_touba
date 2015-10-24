class AddImageAlaUneToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :image_a_la_une, :string
  end
end
