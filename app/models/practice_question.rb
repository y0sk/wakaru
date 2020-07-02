class PracticeQuestion < ApplicationRecord
    belongs_to :check_test_element
    has_many :practice_question_elements
end
