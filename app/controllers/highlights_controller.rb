class HighlightsController < ApplicationController

  def index
    @highlights = Highlight.all
  end

  def create
    h = current_user.highlights.create(params[:highlight])
    if h.save
      redirect_to request.referrer, notice: "saved!"
    else
      redirect_to request.referrer, alert: "error!"
    end
  end

  def show
    @highlight = Highlight.find(params[:id])
  end
end
