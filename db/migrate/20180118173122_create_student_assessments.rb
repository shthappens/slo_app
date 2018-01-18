class CreateStudentAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :student_assessments do |t|

      t.timestamps
    end
  end
end
