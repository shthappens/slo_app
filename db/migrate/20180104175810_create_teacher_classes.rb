class CreateTeacherClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_classes do |t|
      t.belongs_to :teacher
      t.belongs_to :course

      t.timestamps
    end
  end
end
