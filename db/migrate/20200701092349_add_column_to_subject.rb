class AddColumnToSubject < ActiveRecord::Migration[5.0]
  def change
    add_reference :subjects, :student, foreign_key: true
  end
end
