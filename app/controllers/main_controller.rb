class MainController < ApplicationController
  def index
  end

  def open_events
    data = RestClient.get 'https://api.meetup.com/2/open_events'
  end
end
