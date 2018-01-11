class School < ApplicationRecord
  has_many :teacherschools
  has_many :teachers, through :teacherschools

  validates :name, presence: true, allow_blank: false
end
