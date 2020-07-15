class AddReferencesOnVideoLecture < ActiveRecord::Migration[5.0]
  def change
    add_reference :video_lectures, :practice_question, foreign_key: true
  end
end
