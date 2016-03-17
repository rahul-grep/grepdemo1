class UserProfilesController < ApplicationController
  before_action :authenticate_user!

  def new
    @user_profile = current_user.build_user_profile
  end
  
  def create
    @user_profile = current_user.create_user_profile(user_profile_params)
    if @user_profile.save
      redirect_to root_path, notice: "Profile created_successfully"
    else
      render :new, alert: @user_profile.errors.full_messages.join(",")
    end
  end

  def get_user_profile
    user = User.find(params[:id]) 
    data = user.email
    render json: {data: data, avatar: user.user_profile  ? user.user_profile.avatar(:medium) : UserProfile.last.avatar(:medium)}
  end

  private
  def user_profile_params
    params.require(:user_profile).permit(:first_name, :last_name, :city, :state, :phone_no, :gender, :about_me, :avatar)
  end
end
