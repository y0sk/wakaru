ActiveAdmin.register PracticeQuestion do
permit_params :check_test_sentence_id, pictures_attributes: [ :image, :id, :_destroy ], video_lectures_attributes: [ :id, :video_lecture_url, :memo, :_destroy ]

   form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :check_test_sentence_id, label: '対応する問題文', as: :select, collection: CheckTestSentence.all.map { |a| [[a.check_test.name, a.sentence], a.id] } 
      f.inputs  do
      f.has_many :pictures, heading: "演習問題の画像", allow_destroy: true, new_record: true do |u|
        u.input :image, :as => :file, input_html: { accept: 'image/*' },
          :hint => u.object.new_record? ? "画像を指定して下さい" : u.template.image_tag(u.object.image.url(:w80))
        end
      end
      has_many :video_lectures, heading: 'YouTubeなどの動画解説', allow_destroy: true do |u|
        u.input :video_lecture_url, label: '動画のURL'
        u.input :memo, label: 'メモ'
      end
    end
    f.actions
  end

  show do |item_image|
  attributes_table do
    row :check_test_sentence do
      item_image.check_test_sentence.sentence
    end
    # show画面で画像を表示するためのタグを追加
    row :image do
      item_image.pictures.map {|p| image_tag(p.image.url(:w80))}  
    end
  end
end
  
  
end