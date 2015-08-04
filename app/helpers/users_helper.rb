module UsersHelper

	def position_icon
		if @user.profile.position == "Pitcher"
			"<i class='fa fa-code'></i>".html_safe
		elsif @user.profile.position == "Catcher"
	      "<i class='fa fa-lightbulb-o'></i>".html_safe
	    elsif @user.profile.position == "Outfielder"
	      "<i class='fa fa-dollar'></i>".html_safe
	    
	    end

	end

end