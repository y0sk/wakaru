class CheckTestSentence < ApplicationRecord
    belongs_to :check_test
    has_many :check_test_options
    has_many :check_test_answers
    has_many :practice_questions
end
