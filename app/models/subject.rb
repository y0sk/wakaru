class Subject < ApplicationRecord
    belongs_to :student
    has_many :fields
end
