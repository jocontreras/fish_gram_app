class EventsController < ApplicationController
  def new
    @events = Event.new
  end

  def create
    @events = Event.new events_params
    if @events.save
      flash[:notice] = "Events post created!"
      redirect_back(fallback_location: new_event_path)
    end
  end

  def events_params
    params.require(:event).permit(:title, :content)
  end
end
