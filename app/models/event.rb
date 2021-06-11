class Event < ApplicationRecord
  belongs_to :artefact
  has_one_attached :photo

  validates :date, presence: true
  validates :description, presence: true
end
