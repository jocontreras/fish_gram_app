class IndexController < ApplicationController
  def index
    @events = Event.last(5)
  end

end
