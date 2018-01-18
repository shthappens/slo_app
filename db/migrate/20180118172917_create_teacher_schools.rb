class CreateTeacherSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_schools do |t|

      t.timestamps
    end
  end
end
