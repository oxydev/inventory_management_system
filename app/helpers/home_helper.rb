module HomeHelper
  def dashboard_menu_options
    links = ""
    if current_user.admin?
      links += link_to "Invite User", new_user_invitation_path
      links += link_to "Users", "#"
      links += link_to "Catagories", categories_path
    end
    links += link_to "Asset", assets_path
    links.html_safe
  end
end
