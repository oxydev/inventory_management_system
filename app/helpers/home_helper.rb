module HomeHelper
  def dashboard_menu_options
    links = ""
    if current_user.admin?
      links += "<div class= 'col align-self-start'>"
      links += link_to "Invite User", new_user_invitation_path ,:class => 'btn btn-primary'
      links += "</div>"
      links += "<div class='w-100'></div>"
      
      links += "<div class= 'col'>"
      links += link_to "Users", users_path ,:class => 'btn btn-primary'
      links += "</div>"
      links += "<div class='w-100'></div>"
      
      links += "<div class= 'col'>"
      links += link_to "Catagories", categories_path
      
      links += link_to "Use History", use_histories_path
      
    end
    links += link_to "Asset", items_path
    
    links += link_to "Asset Requests", user_purchaserequests_path(current_user)
    links += "<div class='w-100'></div>"
    links.html_safe
  end
end
