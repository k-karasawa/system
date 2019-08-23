class EmployeesController < ApplicationController

  def index
    @employee = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

end
