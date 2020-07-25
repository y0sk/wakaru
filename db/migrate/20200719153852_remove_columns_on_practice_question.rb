class RemoveColumnsOnPracticeQuestion < ActiveRecord::Migration[5.0]
  def change
    remove_column :practice_questions, :image_file_name
    remove_column   :practice_questions, :image_content_type
    remove_column   :practice_questions, :image_file_size
    remove_column :practice_questions, :image_updated_at
  end
end
