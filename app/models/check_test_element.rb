class CheckTestElement < ApplicationRecord
    belongs_to :check_test
    has_many :practice_questions
end
