class Assessment < ApplicationRecord
  belongs_to :teachers
  has_many :studentassessments 
  has_many :students, through :studentassessments

  validates :name, presence: true, allow_blank: false
end
