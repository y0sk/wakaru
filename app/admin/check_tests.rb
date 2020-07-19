ActiveAdmin.register CheckTest do
  permit_params :field_id, :name,  { pictures_attributes: [ :image, :id, :_destroy ] }
  
  form do |f|
    inputs  do
      input :name
      f.input :field_id, label: 'field_id', as: :select, collection: Field.all.map { |a| [[a.subject.name, a.name], a.id] } 
      has_many :pictures, heading: "画像", allow_destroy: true, new_record: true do |u|
        u.input :image, :as => :file, input_html: { accept: 'image/*' },
        :hint => u.object.new_record?  ? ""  : u.template.image_tag(u.object.image.url(:thumb))
      end
    end
    f.actions
  end

  show do |item_image|
  attributes_table do
    row :field_id
    # show画面で画像を表示するためのタグを追加
    row :image do
      item_image.pictures.map {|p| image_tag(p.image.url(:medium))}  
    end
  end
end
end
