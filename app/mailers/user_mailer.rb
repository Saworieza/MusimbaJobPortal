class UserMailer < ActionMailer::Base
    default :from => "noreply@musimba.com"
#Registration confromition email
 #def registration_confirmation(user)
 #   @user = user
 #   mail(:to => "#{user.first_name} <#{user.email}>", :subject => "Please Confirm Your Registration ")
 #end
end