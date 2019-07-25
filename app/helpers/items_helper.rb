module ItemsHelper
  
  def action_option(item)
    # <%= link_to("Show", item_path(item))%>
    # <%= link_to("Edit", edit_item_path(item)) %>
    # <%= link_to("Delete", delete_item_path(item)) %>
    links = ""
    if(current_user.admin)
      links += link_to("Show", item_path(item))
      links += link_to("Edit", edit_item_path(item))
      links += link_to("Delete", delete_item_path(item))
    else
      links += link_to("Use Request", use_request_path(item))
    end
    links.html_safe
  end

  def add_purchase
    # <%= link_to("Add ", new_item_path) <br> %>
    links = ""
    if(current_user.admin)
      links += link_to("Add ", new_item_path)
    else
      links += link_to("Purchase Request", new_user_purchaserequest_path(current_user))
    end
    links.html_safe
  end
end
