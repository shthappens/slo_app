class StudentCourse < ApplicationRecord
  belongs_to :student
  belongs_to :courses
end
