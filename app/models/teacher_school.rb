class TeacherSchool < ApplicationRecord
  has_many :schools
  has_many :teachers 
end
