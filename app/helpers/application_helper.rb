module ApplicationHelper
  def alert_class(flash_type)
    case flash_type.to_sym 
    when :notice 
      " alert-success"
    when :alert 
      " alert-warning"
    when :error 
      " alert-danger"
    end
  end

  def current_user 
    User.find(session[:user_id]) if session[:user_id] rescue ActiveRecord::RecordNotFound
  end

  def logged_in? 
    !!current_user
  end

 
end
