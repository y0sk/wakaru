class CreatePracticeQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :practice_questions do |t|
      t.binary :source_picture
      t.timestamps :started_time
      t.timestamps :ended_time
      t.references :check_test_element, foreign_key: true

      t.timestamps
    end
  end
end
