class RemoveTestScoreFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :test_score, :integer
  end
end
