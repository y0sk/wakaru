class CheckTestAnswersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @check_test_sentence = Check_test_sentence.find(params{:id})
    @check_test_answer = Check_test_answer.new
  end

  def create
    CheckTestAnswer.create(create_params)
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def create_params
    params.require(:check_test_answer).permit(:answer_of_check_test_option_id).merge(check_test_sentence_id: params[:check_test_sentence_id])
  end

end
