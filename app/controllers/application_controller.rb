class ApplicationController < ActionController::Base
  before_action :set_current_user
  #before_action :authenticate_user

  def set_current_user    #ユーザー情報取得共通用
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user   #未ログインユーザー弾き
    if @current_user == nil
      flash[:notice] = "ログインしてください"
      redirect_to("/")
    end
  end

  def forbid_login_user   #既ログインユーザー弾き
    if @current_user
      flash[:notice] = "すでにログインしています"
      redirect_to("/posts/index")
    end
  end



end
