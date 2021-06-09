class Museum < ApplicationRecord
  has_many :artefacts

  validates :name, presence: true
  validates :location, presence: true

  include PgSearch::Model
  multisearchable against: [ :name, :location ]
end
