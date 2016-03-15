class UserController < ApplicationController
before_filter layout: false
  def get_user
    @users = User.all
  end

end
