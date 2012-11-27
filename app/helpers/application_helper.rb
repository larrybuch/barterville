module ApplicationHelper
  def login_or_logout
    if @authenticated_user
      link_to "Log Out, #{@authenticated_user.name.capitalize}", logout_path
    else
      link_to 'Log In', login_path
    end
  end

 
 
end

