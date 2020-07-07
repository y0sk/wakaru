class CheckTestSentencesController < ApplicationController
  def index
  end

  def show
    @check_test_sentence = CheckTestSentence.find(params[:id])
    @check_test_options = @check_test_sentence.check_test_options.all
    @check_test_answer = @check_test_sentence.check_test_answers.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
