class Favorite < ApplicationRecord
  belongs_to :artefact
  belongs_to :user
end
