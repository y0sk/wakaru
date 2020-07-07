class CheckTestSentence < ApplicationRecord
    belongs_to :check_test
    has_many :check_test_options
    has_many :check_test_answers
end
