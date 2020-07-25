class CreatePracticeQuestionElements < ActiveRecord::Migration[5.0]
  def change
    create_table :practice_question_elements do |t|
      t.integer :correctness
      t.references :practice_question, foreign_key: true
      t.timestamps :started_time
      t.timestamps :ended_time
      t.integer :practice_question_number


      t.timestamps
    end
  end
end
