class PracticeQuestionsController < ApplicationController
    
    def index
        @check_test_answers = CheckTestAnswer.where(CheckTestAnswer.arel_table[:created_at].gt(params[:started_time ]))
    end
    def show
    
    end

end
