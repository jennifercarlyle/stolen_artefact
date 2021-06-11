class Collection < ApplicationRecord
  has_many :artefacts

  validates :name, presence: true
  validates :period, presence: true
  validates :origin_location, presence: true

  geocoded_by :origin_location
  after_validation :geocode, if: :will_save_change_to_origin_location?

  include PgSearch::Model
  multisearchable against: [ :name, :period ]
end
