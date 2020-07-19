class AddColumnsOnCheckTest < ActiveRecord::Migration[5.0]
  def change
    #add_reference :check_tests, :material, foreign_key: true
    add_column :check_tests, :starts_from, :integer
    add_column :check_tests, :ends_to, :integer
    add_column :check_tests, :chapter, :string
    add_column :check_tests, :unit_name, :string
  end
end
