class Assessment < ApplicationRecord
  belongs_to :teachers
  belongs_to :student_assessments

  validates :name, presence: true, allow_blank: false
end
