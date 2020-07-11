class AddStudentIdOnCheckTestAnswer < ActiveRecord::Migration[5.0]
  def change
    add_reference :check_test_answers, :student, foreign_key: true
  end
end
