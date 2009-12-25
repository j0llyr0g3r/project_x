# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title(page_title = 'project x')
    page_title
  end

  def link_dummy(text)
    link_to(text, '#')
  end

end
