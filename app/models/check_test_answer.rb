class CheckTestAnswer < ApplicationRecord
    belongs_to :check_test_sentence
    validates :answer_of_check_test_option_id, presence: true
    
end
