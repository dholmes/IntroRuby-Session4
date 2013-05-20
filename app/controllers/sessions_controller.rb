class SessionsController < ApplicationController
  def new

  end

  def create
  	email = params[:session][:email].downcase
  	password = params[:session][:password]

  	user = User.find_by_email(email)
  	if user && user.authenticate(password)
  		flash[:success] = "WOOT!"
  		sign_in user	
  	else
  		flash[:error] = "Awww...fail!"
  		# set message and ...da
  		# redirect them back to login
  	end
  end

  def destroy
  	sign_out
  end
end
