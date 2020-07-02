class StudentsController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show, :edit, :update, :destroy]
  def index
    @students  = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      flash[:success] = '生徒を登録しました。'
      redirect_to root
    else
      flash.now[:danger] = '生徒を登録できませんでした。'
      render :new
    end
  end

  
  def edit
  end

  def update
  end

  def destroy
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password, :password_confirmation)
  end

end
