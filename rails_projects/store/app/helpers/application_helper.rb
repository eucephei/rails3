module ApplicationHelper
  
  def admin_area(&block)
    "whatever"
    content_tag(:div, :class => "admin", &block) if admin?
  end
  
  def admin?
    true
  end
  
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
  
end
