class Museum < ApplicationRecord
  has_many :artefacts
  has_one_attached :photo

  validates :name, presence: true
  validates :location, presence: true

  include PgSearch::Model
  multisearchable against: [ :name, :location ],
                  :using => {:tsearch => {:prefix => true}
end
