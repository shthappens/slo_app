class Course < ApplicationRecord
  has_many :teacher_courses
  has_many :student_courses
  has_many :teachers, through: :teacher_courses
  has_many :students, through: :student_courses

  validates :name, presence: true, allow_blank: false
end
