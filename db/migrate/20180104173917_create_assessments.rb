class CreateAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :assessments do |t|
      t.belongs_to :teacher
      t.belongs_to :student
      t.string :name

      t.timestamps
    end
  end
end
