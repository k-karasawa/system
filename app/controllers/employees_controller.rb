class EmployeesController < ApplicationController
  before_action :authenticate_user

  def index
    @employee = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

end
