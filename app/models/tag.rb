class Tag < ApplicationRecord
  belongs_to :meal, optional: true
end
