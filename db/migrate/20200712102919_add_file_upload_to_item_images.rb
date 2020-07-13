class AddFileUploadToItemImages < ActiveRecord::Migration[5.0]
  def change
    add_attachment :practice_questions, :image
  end
end
