class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find(params[:id])
    @highlights = @user.highlights
    @highlight = Highlight.new
  end

end
