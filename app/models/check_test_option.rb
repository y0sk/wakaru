class CheckTestOption < ApplicationRecord
    belongs_to :check_test_sentence, optional: true
    has_many :pictures, as: :holder, dependent: :destroy
    accepts_nested_attributes_for :pictures, limit: 3, allow_destroy: true

end
