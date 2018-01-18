class CreateStudentAssessment < ActiveRecord::Migration[5.1]
  def change
    create_table :student_assessments do |t|
      t.belongs_to :student
      t.belongs_to :assessment
      t.string :pre_assessment_score
      t.string :post_assessment_score

      t.timestamp
    end
  end
end
