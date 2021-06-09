class Artefact < ApplicationRecord
  belongs_to :collection
  belongs_to :museum
  has_many :events
  has_many :favorites
  has_many :users, through: :favorites

  validates :name, presence: true
  validates :origin_location, presence: true
  validates :current_location, presence: true

  acts_as_favoritable
end
