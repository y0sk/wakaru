class DropImageOfCheckTestSentece < ActiveRecord::Migration[5.0]
  def change
    drop_table :images_of_check_test_sentences
  end
end
