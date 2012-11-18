module ApplicationHelper

		def active_class(c, *a)
		if params[:controller] = c && (a.any? {|a| a==params[:action]})
			'class=active'
		end
	end
end
