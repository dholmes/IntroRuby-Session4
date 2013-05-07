module ApplicationHelper
	def active_page(path)
		%q( class="active" ).html_safe if current_page?(path)
	end	
end
