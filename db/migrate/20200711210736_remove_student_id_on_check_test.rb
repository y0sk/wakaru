class RemoveStudentIdOnCheckTest < ActiveRecord::Migration[5.0]
  def change
    remove_references :check_tests, :student_id, foreign_key: true
  end
end
