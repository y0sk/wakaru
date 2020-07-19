class RemoveColumnOnCheckTest < ActiveRecord::Migration[5.0]
  def change
    remove_reference :check_tests, :holder, polymorphic: true
  end
end
