class CreateCheckTests < ActiveRecord::Migration[5.0]
  def change
    create_table :check_tests do |t|
      t.references :field, foreign_key: true
      t.timestamps :started_time
      t.timestamps :ended_time

      t.timestamps
    end
  end
end
