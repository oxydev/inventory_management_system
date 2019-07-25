module PurchaserequestsHelper

  def admin_user(purchase)
    # <%= link_to("Reject", user_purchaserequests_path(current_user), :class => "btn btn-danger")%>
    # <%= link_to("Approve", user_purchaserequests_path(current_user), :class => "btn btn-primary")%>
    links = ""
    if current_user.admin
      links += link_to("Approve", user_approve_path(current_user,purchase), :class => "btn btn-success")
      links += " "
      links += link_to("Reject", user_decline_path(current_user), :class => "btn btn-danger")
    else
      links += link_to("Edit", user_purchaserequests_path(current_user), :class => "btn btn-primary")
      links += " "
      links += link_to("Delete", user_purchaserequests_path(current_user), :class => "btn btn-danger")
    end
    links.html_safe
  end   

end
