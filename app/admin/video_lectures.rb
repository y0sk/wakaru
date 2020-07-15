ActiveAdmin.register VideoLecture do
  permit_params :video_lecture_url, :memo, :practice_question_id

  form do |f|
    f.inputs do
      f.input :practice_question_id, label: 'practice_question_id', as: :select, collection: PracticeQuestion.all.map { |a| [a.check_test_sentence.sentence, a.id] } 
      f.input :video_lecture_url
      f.input :memo
    end
    f.actions
  end

end
