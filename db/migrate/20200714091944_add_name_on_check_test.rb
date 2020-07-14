class AddNameOnCheckTest < ActiveRecord::Migration[5.0]
  def change
    add_column :check_tests, :name, :string
  end
end
