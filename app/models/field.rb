class Field < ApplicationRecord
    belongs_to :subject
    has_many :check_tests

end
