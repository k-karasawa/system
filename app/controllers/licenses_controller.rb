class LicensesController < ApplicationController
  before_action :authenticate_user

  def new
    @license = License.new
    @license_list = License.all
  end

  def create
    @license = License.new(
      license_name: params[:license_name],
      expiration: params[:expiration],
      surveillance: params[:surveillance],
      S_recommendation: params[:S_recommendation],
      J_recommendation: params[:J_recommendation],
      allowance: params[:allowance],
      bonus: params[:bonus]
      )

      if @license.save
        flash[:notice] = "新資格項目を追加しました"
        redirect_to("/licenses/index")
      else
        render("licenses/new")
      end
  end

  def index
    @license = License.all.order('license_name')
  end

  def show
    @license = License.find_by(id: params[:id])
  end

  def destroy
    @license = License.find_by(id: params[:id])
    @license.destroy
    flash[:notice] = "項目を削除しました"
    redirect_to("/licenses/index")
  end

  def edit
    @license = License.find_by(id: params[:id])
  end

  def update
    @license = License.find_by(id: params[:id])
    @license.license_name = params[:license_name]
    @license.expiration = params[:expiration]
    @license.surveillance = params[:surveillance]
    @license.S_recommendation = params[:S_recommendation]
    @license.J_recommendation = params[:J_recommendation]
    @license.allowance = params[:allowance]
    @license.bonus = params[:bonus]
    @license.last_editor = @current_user.user_name

    if @license.save
      flash[:notice] = "変更が保存されました"
      redirect_to("/licenses/index")
    else
      render("/licenses/edit")
    end 
  end

end
