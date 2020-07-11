class RemoveColumnOnPracticeQuestion < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :practice_questions, :check_test_sentences
  end
end
