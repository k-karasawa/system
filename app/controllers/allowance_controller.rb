class AllowanceController < ApplicationController

  def index
    
    @employees = Employee.all
  end

  def show
    @employees = Employee.all
    @allowances = Post.where(id: params[:id])
  end

end
