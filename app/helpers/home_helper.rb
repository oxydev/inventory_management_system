module HomeHelper
  def dashboard_menu_options
    links = ""
    if current_user.admin?
      links += link_to "Invite User", new_user_invitation_path
      links += link_to "Users", users_path
      links += link_to "Catagories", categories_path
    end
    links += link_to "Asset", items_path
    links += link_to "Asset Requests", user_purchaserequests_path(current_user)
    links.html_safe
  end
end
