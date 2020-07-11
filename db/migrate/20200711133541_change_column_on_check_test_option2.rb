class ChangeColumnOnCheckTestOption2 < ActiveRecord::Migration[5.0]
  def change
      change_column :check_test_options, :correctness, :boolean, default: false
    
  end
end
