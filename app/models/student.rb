class Student < ApplicationRecord
  has_many :student_assessments
  has_many :student_courses
  has_many :assessments, through: :student_assessments
  has_many :courses, through: :student_courses

  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :test_score, presence: true, allow_blank: true
end
