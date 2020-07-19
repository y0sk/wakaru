class CheckTest < ApplicationRecord
    belongs_to :field
    has_many :check_test_sentences

    has_many :pictures, as: :holder, dependent: :destroy
    accepts_nested_attributes_for :pictures, limit: 3, allow_destroy: true

end
