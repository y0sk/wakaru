class PracticeQuestionsController < ApplicationController
    
    def index
        @check_test_answers = CheckTestAnswer.where(CheckTestAnswer.arel_table[:created_at].gt(params[:started_time ]))
        @field_id = @check_test_answers.first.check_test_sentence.check_test.field
        @subject_id = @check_test_answers.first.check_test_sentence.check_test.field.subject
        @field_name = Field.find(@field_id).name

    end
    def show
    
    end

end
