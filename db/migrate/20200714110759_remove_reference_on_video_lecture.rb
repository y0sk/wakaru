class RemoveReferenceOnVideoLecture < ActiveRecord::Migration[5.0]
  def change
    remove_column :video_lectures, :practice_questions_id
  end
end
