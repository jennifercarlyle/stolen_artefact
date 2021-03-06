class Artefact < ApplicationRecord
  belongs_to :collection
  belongs_to :museum
  has_many :events
  has_many :favorites
  has_many :users, through: :favorites
  has_one_attached :photo

  validates :name, presence: true
  validates :origin_location, presence: true
  validates :current_location, presence: true

  acts_as_favoritable

  geocoded_by :current_location
  after_validation :geocode, if: :will_save_change_to_current_location?

  include PgSearch::Model
  multisearchable against: [ :name, :context, :made_by, :material ]
end
