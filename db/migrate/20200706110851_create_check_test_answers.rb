class CreateCheckTestAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :check_test_answers do |t|
      t.references :check_test_sentences
      t.integer :answer_of_check_test_option_id

      t.timestamps
    end
  end
end
