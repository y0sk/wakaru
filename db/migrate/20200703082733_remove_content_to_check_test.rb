class RemoveContentToCheckTest < ActiveRecord::Migration[5.0]
  def change
    remove_column :check_tests, :content, :text
  end
end
