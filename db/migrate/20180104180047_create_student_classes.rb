class CreateStudentClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :student_classes do |t|
      t.belongs_to :student
      t.belongs_to :course

      t.timestamps
    end
  end
end
