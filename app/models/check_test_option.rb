class CheckTestOption < ApplicationRecord
    belongs_to :check_test_sentence
    has_many :practice_questions
end
