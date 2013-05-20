module SessionsHelper
	 def sign_in(user)
	 	session[:user_id] = @current_user.id
	 	is_authenticated
	 end
	 def sign_out
	 	self.current_user = nil
	 	session[:user_id] = nil
	 	reset_session
	 end
	 def current_user=(user)
	 	@current_user = user
	 end
	 def get_authenticated_user
	 	if session[:user_id] then 
	 		self.current_user = User.find(session[:user_id])
	 	
	 	return self.current_user
	 end

end
