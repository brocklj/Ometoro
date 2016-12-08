module ApplicationHelper
  def get_visible_pages
    return @pages_menu = Page.where(:visible => 1)
  end
end
