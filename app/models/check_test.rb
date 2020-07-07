class CheckTest < ApplicationRecord
    belongs_to :student
    belongs_to :field
    has_many :check_test_sentences
end
