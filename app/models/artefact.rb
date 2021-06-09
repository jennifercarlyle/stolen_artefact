class Artefact < ApplicationRecord
  belongs_to :collection
  belongs_to :museum
  has_many :events
  has_many :favorites
  has_many :users, through: :favorites

  validates :name, presence: true
  validates :origin_location, presence: true
  validates :current_location, presence: true

  include PgSearch::Model
  multisearchable against: [ :name, :context, :made_by, :material ]
end
