class PracticeQuestion < ApplicationRecord
    belongs_to :check_test_sentence
    has_many :practice_question_elements
end
