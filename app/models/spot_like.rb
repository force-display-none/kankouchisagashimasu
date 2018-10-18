class SpotLike < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :spot
end
