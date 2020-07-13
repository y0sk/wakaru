ActiveAdmin.register PracticeQuestion do
permit_params :check_test_sentence_id, :image

   form do |f|
    f.inputs do
      f.input :check_test_sentence_id, label: 'check_test_sentence_id', as: :select, collection: CheckTestSentence.all.map { |a| [a.sentence, a.id] } 
      f.input :image, as: :file, hint: f.object.new_record? ? "" : f.template.image_tag(f.object.image.url(:thumb))    
    end
    f.actions
  end

  show do |item_image|
  attributes_table do
    row :check_test_sentence_id
    # show画面で画像を表示するためのタグを追加
    row :image do
      image_tag(practice_question.image.url(:medium))
    end
  end
end
  
  
end
