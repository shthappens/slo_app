class District < ApplicationRecord
  has_many :schools

  validates :name, presence: true, allow_blank: false
  validates :location, presence: true, allow_blank: false
end
