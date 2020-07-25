ActiveAdmin.register CheckTestOption do
  permit_params :option, :check_test_sentence_id, :correctness, { pictures_attributes: [ :image, :id, :_destroy ] }
  form do |f|
    f.inputs do
      f.input :check_test_sentence_id, label: 'check_test_sentence_id', as: :select, collection: CheckTestSentence.all.map { |a| [[a.check_test.name, a.sentence], a.id] } 
      f.input :option
      f.input :correctness, label: '正解？', as: :boolean
      has_many :pictures, heading: "画像", allow_destroy: true, new_record: true do |u|
        u.input :image, :as => :file, input_html: { accept: 'image/*' },
        :hint => u.object.new_record?  ? ""  : u.template.image_tag(u.object.image.url(:w80))
      end
    end
    f.actions
  end
  show do |item_image|
  attributes_table do
    row :check_test_sentence do
      item_image.check_test_sentence.sentence
    end
    row :option do
      item_image.option
    end
    
    # show画面で画像を表示するためのタグを追加
    row :image do
      item_image.pictures.map {|p| image_tag(p.image.url(:w142))}  
    end
  end
  end
end
