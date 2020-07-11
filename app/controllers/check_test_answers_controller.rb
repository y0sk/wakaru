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
    @ids_index = @ids.index(params[:check_test_sentence_id])
    @started_time = params[:check_test_answer][:started_time]
    @field_id =params[:check_test_answer][:field_id]
    #binding.pry

      if @check_test_sentence_id != @ids[@ids.length - 1]
        next_page_id = @ids[@ids_index + 1]
        save_check_test_answer(@check_test_answer, next_page_id, @started_time, @field_id)
      else
        if @check_test_answer.save
        redirect_to field_practice_questions_path(field_id: @field_id, started_time: @started_time)
        else
          redirect_to :back, notice: '回答を登録できませんでした。'
        end
      end
    
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def save_check_test_answer(check_test_answer, next_page_id, started_time, field_id)
    if check_test_answer.save
      redirect_to check_test_sentence_path(next_page_id, ids: CheckTest.find(params[:check_test_answer][:check_test_id]).check_test_sentences.pluck(:id), started_time: started_time, field_id: field_id)
    else
      redirect_to :back, notice: '回答を登録できませんでした。'
    end
  end


  private

  def create_params
    params.require(:check_test_answer).permit(:answer_of_check_test_option_id, :student_id).merge(check_test_sentence_id: params[:check_test_sentence_id])
  end

end
