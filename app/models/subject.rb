class Subject < ApplicationRecord
    has_many :fields
    has_many :materials
end
