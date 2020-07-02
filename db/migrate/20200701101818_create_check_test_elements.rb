class CreateCheckTestElements < ActiveRecord::Migration[5.0]
  def change
    create_table :check_test_elements do |t|
      t.integer :correctness
      t.references :check_test, foreign_key: true
      t.timestamps :started_time
      t.timestamps :ended_time

      t.timestamps
    end
  end
end
