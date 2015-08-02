class ProfilesController < ApplicationController
	def new
		# form where user fills out own profile
		@user = User.find( params[:user_id])
		@profile = Profile.new
	end

	def create
		@user = User.find( params[:user_id])
		@profile = @user.build_profile(profile_params)
		if @profile.save
			flash[:success] = "Profle Updated!"
			redirect_to user_path(params[:user_id])
		else
			render acton: :new
		end

	end

	def edit
		@user = User.find( params[:user_id])
		@profile = @user.profile
	end

	private

	def profile_params
		params.require(:profile).permit(:first_name, :last_name, :position, :grade, :team, :phone_number, :contact_email, :description)
	end

end
