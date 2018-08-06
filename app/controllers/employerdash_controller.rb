class EmployerdashController < ApplicationController
  before_filter :authenticate_employer!
  layout false
  def index
  end
end
