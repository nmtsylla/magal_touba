class Rubrique < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titre, use:  [:slugged, :finders]

  has_many :articles
end
