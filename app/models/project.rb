class Project < ApplicationRecord
  belongs_to :company
  has_many :participations
end
