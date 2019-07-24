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
      links += link_to("Request", "#")
    end
    links.html_safe
  end
end
