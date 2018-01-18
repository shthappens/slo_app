class Student < ApplicationRecord
  has_many :studentassessments
  has_many :studentcourses
  has_many :assessments, through :studentassessments 
  has_many :courses, through :studentcourses

  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :test_score, presence: true, allow_blank: true
end
