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
  
end
