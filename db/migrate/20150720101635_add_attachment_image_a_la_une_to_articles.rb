class AddAttachmentImageALaUneToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :image_a_la_une
    end
  end

  def self.down
    remove_attachment :articles, :image_a_la_une
  end
end
