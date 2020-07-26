class RemoveStudentIdOnCheckTest < ActiveRecord::Migration[5.0]
  def change
    remove_reference :check_tests, :student, foreign_key: true
  end
end
