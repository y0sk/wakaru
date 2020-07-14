class CreateVideoLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :video_lectures do |t|
      t.text :video_lecture_url
      t.text :memo
      t.references :practice_questions

      t.timestamps
    end
  end
end
