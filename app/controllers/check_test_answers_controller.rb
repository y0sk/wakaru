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
    @check_test_answer = CheckTestAnswer.new(create_params)
    @ids = params[:check_test_answer][:ids].split(" ")
    @check_test_sentence_id = params[:check_test_sentence_id]
    if @check_test_sentence_id != @ids[@ids.length - 1]
      next_page_id = @check_test_sentence_id.to_i + 1
      save_check_test_answer(@check_test_answer, next_page_id)
    else
      redirect_to fields_path(subject_id: CheckTestSentence.find(@check_test_sentence_id).check_test.field.subject_id)
    end

    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def save_check_test_answer(check_test_answer, next_page_id)
    if check_test_answer.save
      #binding.pry
      redirect_to check_test_sentence_path(next_page_id, ids: CheckTest.find(params[:check_test_answer][:check_test_id]).check_test_sentences.pluck(:id))
    else
      redirect_to :back, notice: '回答を登録できませんでした。'
      

    end

  end

  private

  def create_params
    params.require(:check_test_answer).permit(:answer_of_check_test_option_id).merge(check_test_sentence_id: params[:check_test_sentence_id])
  end

end
