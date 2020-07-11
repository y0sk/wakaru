class CheckTestAnswer < ApplicationRecord
    belongs_to :check_test_sentence
    belongs_to :student
    
    validates :answer_of_check_test_option_id, presence: true
    
end
