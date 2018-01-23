class Teacher < ApplicationRecord
  has_many :assessments
  has_many :teacher_courses
  has_many :courses, through: :teacher_courses
  has_many :student_assessments, through: :assessments

  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :school, presence:true, allow_blank: false
end
