class Assessment < ApplicationRecord
  belongs_to :teacher
  has_many :student_assessments
  has_many :students, through: :student_assessments

  validates :name, presence: true, allow_blank: false
end
