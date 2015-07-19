class Article < ActiveRecord::Base
  belongs_to :rubrique
  extend FriendlyId
  friendly_id :titre, use:  [:slugged, :finders]
end
