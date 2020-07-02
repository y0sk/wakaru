class RemoveStudentToSubject < ActiveRecord::Migration[5.0]
  def change
    remove_reference :subjects, :student, foreign_key: true
  end
end
