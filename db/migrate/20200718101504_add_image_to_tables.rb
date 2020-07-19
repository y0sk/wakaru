class AddImageToTables < ActiveRecord::Migration[5.0]
  def chenge
      add_reference :check_tests, :holder, polymorphic: true, index: true
  end
end
