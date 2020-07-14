class PracticeQuestion < ApplicationRecord
    belongs_to :check_test_sentence
    has_many :practice_question_elements
    has_many :video_lectures
    has_attached_file :image,
                    :styles      => { :medium => "300x300>", :thumb => "100x100>" },
                    # 1つのモデルが複数の画像をもつ（has_many）場合、下記の指定が必要らしい
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename"

    validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
