class HomeController < ApplicationController
  def index
    @events = Event.last(5)
  end
end
