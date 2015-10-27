class Article < ActiveRecord::Base
  # has_attached_file :image_a_la_une, :styles => {:xlarge =>"1200x700",:banner => "900x300", :large => "600x300", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/magal.png"
  # validates_attachment_content_type :image_a_la_une, :content_type => /\Aimage\/.*\Z/

  enum type_article: [ :texte, :video, :gallerie ]
  enum status: [ :cancelled, :publie, :brouillon ]
  belongs_to :rubrique
  extend FriendlyId
  friendly_id :titre, use:  [:slugged, :finders]
  self.per_page = 15

  mount_uploader :image_a_la_une, ThumbnailUploader

  def rubrique_name
      rubrique.titre.humanize
  end
end
