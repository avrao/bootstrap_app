module ApplicationHelper



=begin
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "desc" ? "asc" : "desc"
    link_to "#{title} <i class='#{direction == "desc" ? "icon-chevron-down" : "icon-chevron-up"}'></i>".html_safe,
            {:sort => column, :direction => direction}, {:class => css_class}
  end

  def sortableDesc(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "desc" ? "asc" : "desc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
=end



=begin
  #Place this code in your application_helper.rb
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "#{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"

    if css_class == "asc"
      header_class = "headerSortDown"
    elsif css_class == "desc"
      header_class = "headerSortUp"
    end

    content_tag("th", title, :"data-link" => url_for(params.merge(:sort => column, :direction => direction, :page => nil)), :class => "header multiSort #{header_class}")

  end
=end

=begin
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to "#{title} <i class='#{direction == "desc" ? "icon-chevron-down" : "icon-chevron-up"}'></i>".html_safe, {:sort => column, :direction => direction}, {:class => css_class}
  end

  def sortableDesc(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "desc" ? "asc" : "desc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
=end



end
