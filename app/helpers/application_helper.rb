module ApplicationHelper
  def login_or_logout
    if @authenticated_user
      link_to "log out", logout_path
    else
      link_to 'log in', login_path
    end
  end
end
