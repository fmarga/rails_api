class Workout < ApplicationRecord
  has_many :activities
  has_one :level
end
