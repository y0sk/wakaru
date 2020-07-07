class RemoveReferenceToCheckTestAnswer < ActiveRecord::Migration[5.0]
  def change
    remove_reference :check_test_answers, :check_test_sentences
  end
end
