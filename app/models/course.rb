class Course < ApplicationRecord
  has_many :teachers, through :teachercourses
  has_many :students, through :studentcourses

  validates :name, presence: true, allow_blank: false
end
