class AddStudentAssessmentIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :student_assessment_id, :integer
  end
end
