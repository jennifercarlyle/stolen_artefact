class Artefact < ApplicationRecord
  belongs_to :collection
  belongs_to :museum
  has_many :events
  has_many :favorites
  has_many :users, through: :favorites
end
