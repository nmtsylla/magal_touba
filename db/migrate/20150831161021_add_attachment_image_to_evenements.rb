class AddAttachmentImageToEvenements < ActiveRecord::Migration
  def self.up
    change_table :evenements do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :evenements, :image
  end
end
