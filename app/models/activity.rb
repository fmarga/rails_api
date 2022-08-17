class Activity < ApplicationRecord
  belongs_to :workout, optional: true
end
