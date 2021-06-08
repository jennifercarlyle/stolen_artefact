class Event < ApplicationRecord
  belongs_to :artefact

  validates :date, presence: true
  validates :description, presence: true
end
