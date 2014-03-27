module ApplicationHelper
  
	def full_title(page_title)
		base_title = "Country Catering" 
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
  
  def active_link(c)
    unless current_page?(root_path)
      params[:controller] == c ? "active" : ""
    end
  end

  def display_error(object, field)
    if object.errors.any?
      if object.errors[field.to_sym].present?
        '<div class="field inline alert alert-error ui-state-error"><span class="ui-icon ui-icon-alert inline"></span>'.html_safe + " #{object.errors[field.to_sym].first}" + '</div>'.html_safe
      end
    end
  end

  def display_error_box(object)
    if object.errors.any?
      a = '<div id="error_explanation"><h2>'.html_safe + pluralize(object.errors.count, "error") + ' prohibited this item from being saved:</h2><ul>'.html_safe

      str_array = []
      object.errors.full_messages.each do |msg|
       str_array << "<li>" + msg + "</li>"
      end

      b = str_array.join.html_safe

      c = '</ul></div>'.html_safe

      d = a + b + c
      return d
    end
  end
  
end
