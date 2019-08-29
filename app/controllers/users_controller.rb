class UsersController < ApplicationController
	before_action :forbid_login_user, {only: [:login, :login_form]}

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
		@user = User.new(user_id: params[:user_id], user_name: params[:user_name], password: params[:password])

		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "利用者登録が完了しました"
		  	redirect_to("/posts/index")
			#redirect_to("/signup")

		else
			render("users/new")

		end

	end

	
end
