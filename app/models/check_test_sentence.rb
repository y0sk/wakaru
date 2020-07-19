class CheckTestSentence < ApplicationRecord
    belongs_to :check_test
    has_many :check_test_options
    has_many :check_test_answers
    has_many :practice_questions

    #has_many :pictures, as: :holder, dependent: :destroy
    #accepts_nested_attributes_for :pictures, limit: 3, allow_destroy: true



end
