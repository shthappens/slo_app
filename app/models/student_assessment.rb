class StudentAssessment < ApplicationRecord
  belongs_to :students
  belongs_to :assessments
end
