class AllowanceController < ApplicationController

  def index
    render :layout => nil
    @allo = Employee.all
    #all.order('name')
  end
end
