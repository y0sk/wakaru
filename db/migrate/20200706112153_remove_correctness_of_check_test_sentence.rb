class RemoveCorrectnessOfCheckTestSentence < ActiveRecord::Migration[5.0]
  def change
    remove_column :check_test_sentences, :correctness, :integer
  end
end
