class SessionsController < Devise::SessionsController
	layout false
  def create
     super
  end
end