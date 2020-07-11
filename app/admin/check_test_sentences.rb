ActiveAdmin.register CheckTestSentence do
  permit_params :check_test_id, :sentence

   form do |f|
    f.inputs do
      f.input :check_test_id, label: 'check_test_id', as: :select, collection: CheckTest.all.map { |a| [a.field.name, a.id] } 
      f.input :sentence
    end
    f.actions
  end
end
