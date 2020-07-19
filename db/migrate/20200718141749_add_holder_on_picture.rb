class AddHolderOnPicture < ActiveRecord::Migration[5.0]
  def up
    change_table :pictures do |t|
      t.references :holder, polymorphic: true
    end
  end

  def down
    change_table :pictures do |t|
      t.remove_references :holder, polymorphic: true
    end
  end
end
