class PracticeQuestion < ApplicationRecord
    belongs_to :check_test_sentence
    has_many :practice_question_elements
    has_many :video_lectures
    accepts_nested_attributes_for :video_lectures, limit: 5, allow_destroy: true
    has_many :pictures, as: :holder, dependent: :destroy
    accepts_nested_attributes_for :pictures, limit: 20, allow_destroy: true

end
