class UsersController < ApplicationController
	before_action :forbid_login_user, {only: [:login, :login_form]}
	before_action :administrators, {only: [:index, :destroy, :show, :add_administrator, :del_administrator]}

		def login_form
		end


	def login
		 @user = User.find_by(user_id: params[:user_id], password: params[:password])
		 
		if @user
			session[:user_id] = @user.id
			flash[:notice] = "ログインしました"
		  	redirect_to("/posts/index")
		else
		  	@error_message = "ログイン情報に誤りがあります"
		  
		  	@user_id = params[:user_id]
		  	#@password = params[:password]　パスワードは保持しないにしようかな
		  	render("users/login_form")
		end
	end
	
	
	def logout
		session[:user_id] = nil
		flash[:notice] = "ログアウトしました"
		redirect_to("/")
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_id: params[:user_id], user_name: params[:user_name], password: params[:password], admin: params[:admin])
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "利用者登録が完了しました"
		  	redirect_to("/posts/index")
		else
			render("users/new")
		end
	end



	#ここから下、管理者権限で制限アクション
	def index
		@user = User.all
	end


	def destroy
    flash[:notice] = "1件削除しました"
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to("/users/index")
	end


	def show
		@user = User.find_by(id: params[:id])
	end

	
	def add_administrator
		@user = User.find_by(id: params[:id])
    @user.admin = "1"

    if @user.save
      flash[:notice] = "管理者権限を付与しました"
      redirect_to("/users/index")
    end
	end
	
	def del_administrator
		@user = User.find_by(id: params[:id])
    @user.admin = "0"

    if @user.save
      flash[:notice] = "管理者権限を削除しました"
      redirect_to("/users/index")
    end
	end


end
