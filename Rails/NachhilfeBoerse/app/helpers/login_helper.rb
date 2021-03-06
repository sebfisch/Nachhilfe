module LoginHelper
  def signed_in?
    return (current_user != nil)
  end
  
  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.digest(remember_token))
  end
  
  def current_user
    token = User.digest(cookies[:remember_token])
	date = DateTime.now
	user = User.find_by(remember_token: token)
	if user != nil then
	  user.update_attribute(:last_activity, date)
	end  
    return User.find_by(remember_token: token)
  end
  
  def sign_out
    current_user.update_attribute(:remember_token, 
      User.digest(User.new_remember_token))
    cookies.delete(:remember_token)
  end
end