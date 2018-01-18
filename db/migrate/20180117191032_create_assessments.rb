class CreateAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :assessments do |t|
      t.belongs_to :teacher
      t.belongs_to :student_assessment

      t.string :name
    end
  end
end
