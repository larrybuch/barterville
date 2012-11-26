module ApplicationHelper
  def login_or_logout
    if @authenticated_user
      link_to "log out #{@authenticated_user.name}", logout_path
    else
      link_to 'log in', login_path
    end
  end
end
