class PostsController < ApplicationController
  before_action :authenticate_user
  
  
  def index
    @post = Post.all.order(date_of_license: :desc)
  end

  def new
    @post = Post.new(license_name: params[:license_name],
      holder_name: params[:holder_name],
      date_of_license: params[:date_of_license])
  end

  def show
    @post = Post.find_by(id: params[:id])
  end


  def create
    @post = Post.new(license_name: params[:license_name],
       holder_name: params[:holder_name],
       date_of_license: params[:date_of_license])

    if @post.save
      redirect_to("/posts/index")     
    else
      render("posts/new")
    end

  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.date_of_license = params[:date_of_license]
    @post.last_editor = @current_user.user_name

    if @post.save
      flash[:notice] = "変更が保存されました"
      redirect_to("/posts/index")
    else
      render("/posts/edit")
    end 
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end

  def renew
    @post = Post.search(params[:label1])
    redirect_to("posts/index")
  end

end
