class CheckTestSentence < ApplicationRecord
    belongs_to :check_test, optional: true
    has_many :check_test_options, dependent: :destroy
    accepts_nested_attributes_for :check_test_options, allow_destroy: true
    has_many :check_test_answers, dependent: :destroy
    has_many :practice_questions, dependent: :destroy

    has_many :pictures, as: :holder, dependent: :destroy
    accepts_nested_attributes_for :pictures, limit: 3, allow_destroy: true

end
