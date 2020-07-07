class AddReferenceToCheckTestSentence < ActiveRecord::Migration[5.0]
  def change
    add_reference :check_test_answers, :check_test_sentence, foreign_key: true
  end
end
