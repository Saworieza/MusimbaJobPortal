class EmployersController < ApplicationController
    layout false
    def show
      @employer = Employer.find(params[:id])
    end
end


