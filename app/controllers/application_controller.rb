class ApplicationController < ActionController::Base

   $passion_words = [
    "わからないことがあれば、点は上がる",
    "わからないは財産",
    "わからない → わかる、誰でもできる",
    "誰でもわからないことはある",
    "わかるまでわからない",
    "わからないのは迷子になっているだけ",
    "最初は全部わからない",
    "この世の99％はまだわからない"
  ]

  protect_from_forgery with: :exception

  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end




end
