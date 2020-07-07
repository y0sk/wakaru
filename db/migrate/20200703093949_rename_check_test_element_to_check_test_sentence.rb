class RenameCheckTestElementToCheckTestSentence < ActiveRecord::Migration[5.0]
  def change
    rename_table :check_test_elements, :check_test_sentences
  end
end
