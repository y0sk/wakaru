class ChangeColumnOnCheckTestOption < ActiveRecord::Migration[5.0]
  def change
    def up
      change_column :check_test_options, :correctness, :boolean, default: false
    end
    def down
      change_column :check_test_options, :correctness, :integer
    end
  end
end
