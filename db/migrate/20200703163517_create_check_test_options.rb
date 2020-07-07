class CreateCheckTestOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :check_test_options do |t|
      t.text :option
      t.references :check_test_sentence, foreign_key: true
      t.integer :correctness
      t.timestamps
    end
  end
end
