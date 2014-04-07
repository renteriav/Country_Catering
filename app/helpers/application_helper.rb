module ApplicationHelper
  
	def full_title(page_title)
		base_title = "Country Catering" 
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
  
  def active_link(controllers=[])
    unless current_page?(root_path)
      controllers.include?(params[:controller]) ? "active" : ""
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
      render 'shared/error_box', :@object => object
    end
  end
end
