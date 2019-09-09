class EmployeesController < ApplicationController
  before_action :authenticate_user

  def index
    @employee = Employee.all
  end

  def edit
    @employee = Employee.find_by(id: params[:id])
  end

  def registration
    @employee = Employee.new(
      j_code: params[:j_code],
      name: params[:name],
      department: params[:department],
      section: params[:section],
      join_date: params[:join_date],
      experience: params[:experience],
      division: params[:division],
      date_of_birth: params[:date_of_birth],
      blood_type: params[:blood_type],
      address: params[:address],
      phone1: params[:phone1],
      phone2: params[:phone2],
      education: params[:education],
      graduation: params[:graduation],
      specified_dpt: params[:specified_dpt]
    )
  end

  def create
    @employee = Employee.new(
      j_code: params[:j_code],
      name: params[:name],
      department: params[:department],
      section: params[:section],
      join_date: params[:join_date],
      experience: params[:experience],
      division: params[:division],
      date_of_birth: params[:date_of_birth],
      blood_type: params[:blood_type],
      address: params[:address],
      phone1: params[:phone1],
      phone2: params[:phone2],
      education: params[:education],
      graduation: params[:graduation],
      specified_dpt: params[:specified_dpt]
    )

    if @employee.save
      flash[:notice] = "1件登録しました"
      redirect_to("/employees/index")     
    else
      render("employees/registration")
    end
  end

  def management
    @employee = Employee.all
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.j_code = params[:j_code]
    @employee.name = params[:name]
    @employee.department = params[:department]
    @employee.section = params[:section]
    @employee.join_date = params[:join_date]
    @employee.experience = params[:experience]
    @employee.division = params[:division]
    @employee.date_of_birth = params[:date_of_birth]
    @employee.blood_type = params[:blood_type]
    @employee.address = params[:address]
    @employee.phone1 = params[:phone1]
    @employee.phone2 = params[:phone2]
    @employee.education = params[:education]
    @employee.graduation = params[:graduation]
    @employee.specified_dpt = params[:specified_dpt]

    if @employee.save
      flash[:notice] = "変更が保存されました"
      redirect_to("/employees/management")
    else
      render("/employees/edit")
    end 
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    flash[:notice] = "項目を削除しました"
    redirect_to("/employees/management")
  end

end
