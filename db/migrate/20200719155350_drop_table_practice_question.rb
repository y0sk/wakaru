class DropTablePracticeQuestion < ActiveRecord::Migration[5.0]
  def change
    remove_reference :practice_questions, :check_test_sentence
  end
end
