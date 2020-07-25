ActiveAdmin.register CheckTestSentence do
  permit_params :check_test_id, :sentence, { pictures_attributes: [ :image, :id, :_destroy ] }, {check_test_options_attributes: [:option, :id, :_destroy, :correctness, { pictures_attributes: [ :image, :id, :_destroy ] }]}

   form do |f|
    f.inputs do
      f.input :check_test_id, label: 'チェックテスト', as: :select, collection: CheckTest.all.map { |a| [[a.field.name, a.name], a.id] } 
      f.input :sentence, label: '問題文'
      has_many :pictures, heading: "問題文の画像", allow_destroy: true, new_record: true do |u|
        u.input :image, :as => :file, input_html: { accept: 'image/*' },
        :hint => u.object.new_record?  ? ""  : u.template.image_tag(u.object.image.url(:thumb))
      end
      has_many :check_test_options, label: '選択肢', allow_destroy: true do |u|
        u.input :option, input_html: {value: "わからない"}
        u.input :correctness, label:'正解？', as: :boolean
        u.has_many :pictures, heading: "選択肢の画像", allow_destroy: true, new_record: true do |w|
          w.input :image, :as => :file, input_html: { accept: 'image/*' },
          :hint => w.object.new_record?  ? ""  : w.template.image_tag(w.object.image.url(:thumb))
        end

      end
    end
    f.actions
  end
  show do |item_image|
  attributes_table do
    row :check_test_sentence_id do
      item_image.id
    end
    row :check_test_name do
      item_image.check_test.name
    end
    row :check_test_sentence do
      item_image.sentence
    end
    # show画面で画像を表示するためのタグを追加
    row :image do
      item_image.pictures.map {|p| image_tag(p.image.url(:w80))}  
    end
  end
  end
end