class AddColumnToCheckTest < ActiveRecord::Migration[5.0]
  def change
    add_reference :check_tests, :student, foreign_key: true
  end
end
