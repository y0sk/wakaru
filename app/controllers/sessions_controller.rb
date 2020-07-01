class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:session][:email].downcase
    password = params[:sessions][:password]
    if login(email, password)
      flash[:success] = 'ログインできました。'
      redirect @student
    else
      flash[:danger] = 'ログインできませんでいた。'
      render 'new'
    end
  end

  def destroy
    session[:student_id]  = nil
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url
  end

  private

  def login(email, password)
    @student = Student.find_by(email: email)

    if @student && @student.authenticate(password)
      session[:student_id] = @student.id
      return true
    else
      return false
    end
  end
end
