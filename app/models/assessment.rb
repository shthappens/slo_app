class Assessment < ApplicationRecord
  belongs_to :teachers
  belongs_to :students

  validates :name, presence: true, allow_blank: false
end
