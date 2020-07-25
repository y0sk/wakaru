class VideoLecture < ApplicationRecord
    belongs_to :practice_question, optional: true

end
