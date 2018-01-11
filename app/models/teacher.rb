class Teacher < ApplicationRecord
  has_many :assessments
  has_many :teachercourses
  has_many :courses, through :teachercourses

  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :school, presence:true, allow_blank: false
end
