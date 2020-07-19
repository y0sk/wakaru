class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.name
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
