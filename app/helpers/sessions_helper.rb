module SessionsHelper
  def log_in(user)
    session[:user_id] = user.ID
  end

  def current_user 
    @current_user ||= User.find_by(ID: session[:user_id])
  end

  def log_out
    session.delete(:user_id)
    @current_user = nul
  end
end
