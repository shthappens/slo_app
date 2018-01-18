class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.belongs_to :teacher_class
      t.belongs_to :student_course
      t.string :name

      t.timestamp
    end
  end
end
