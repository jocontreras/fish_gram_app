class NewsController < ApplicationController
  def new
    @events = Event.new
  end

  def create
    @events = Event.new news_params
    if @events.save
      flash[:notice] = "Event post created!"
      redirect_back(fallback_location: new_event_path)
    end
  end

  private

  def news_params
    params.require(:events).permit(:title, :content)
  end
end
