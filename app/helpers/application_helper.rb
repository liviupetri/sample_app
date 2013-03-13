module ApplicationHelper
#returns the page title
#if the page title is empty returns base title

	def full_title(page_title)
		base_title = "Zelvo"
		if page_title.empty?
			return base_title
		else
			return "#{base_title} | #{page_title}"
		end
	end
end
