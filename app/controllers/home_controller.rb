class HomeController < ApplicationController
  def index
    @highlights = Highlight.all
    @users = User.all
    if current_user
      redirect_to user_path(current_user)
    end
  end
end
