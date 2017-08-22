class HomeController < ApplicationController
  #before_action :authenticate_user!, only: [:index, :new]

  def index
    @events = Event.last(5)
  end
end
