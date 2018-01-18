class TeacherCourse < ApplicationRecord
  belongs_to :teachers
  belongs_to :courses 
end
