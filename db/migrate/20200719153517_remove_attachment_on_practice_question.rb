class RemoveAttachmentOnPracticeQuestion < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :pictures, :image
  end
end
