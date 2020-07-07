class AddSentenceToCheckTestSentence < ActiveRecord::Migration[5.0]
  def change
    add_column :check_test_sentences, :sentence, :text
  end
end
