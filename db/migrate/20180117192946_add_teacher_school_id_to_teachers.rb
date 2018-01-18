class AddTeacherSchoolIdToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :teacher_school_id, :integer
  end
end
