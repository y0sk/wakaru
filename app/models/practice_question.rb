class PracticeQuestion < ApplicationRecord
    belongs_to :check_test_sentence
    has_many :practice_question_elements
    has_many :video_lectures
    has_many :pictures, as: :holder, dependent: :destroy
    accepts_nested_attributes_for :pictures, limit: 3, allow_destroy: true

end
