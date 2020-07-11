class RemoveStudentIdOnCheckTest < ActiveRecord::Migration[5.0]
  def change
    remove_column :check_tests, :student_id, foreign_key: true
  end
end
