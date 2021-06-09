class Collection < ApplicationRecord
  has_many :artefacts

  validates :name, presence: true
  validates :period, presence: true

  include PgSearch::Model
  multisearchable against: [ :name, :period ]
end
