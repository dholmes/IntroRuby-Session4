module ApplicationHelper
	def active_page(path)
<<<<<<< HEAD
		%q( class="active" ).html_safe if current_page?(path)
	end	
=======
		%q( class="active").html_safe if current_page?(path)
	end
>>>>>>> jwillis3-session4/master
end
