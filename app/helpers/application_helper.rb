# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def fav_icon_link
    # this line causes cucumber to print: .ignoring attempt to close head with link
    content_tag(:link, '', :rel => "shortcut icon", :href => PATH_TO_FAV_ICON)
  end

  def page_title
    'project x'
  end
end
