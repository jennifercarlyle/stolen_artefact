class Collection < ApplicationRecord
  has_many :artefacts

  validates :name, presence: true
  validates :period, presence: true
end
