class MainController < ApplicationController
  def index
    zip = '98101'
    country = 'USA'
    city = 'Seattle'
    @topic = 'Ruby'

    data = RestClient.get 'https://api.meetup.com/2/open_events?sign=true&photo-host=public&zip=' + zip + '&country=' + country + '&topic=' + @topic + '&city=' + city + '&state=WA&page=20&key=23145310778c71694fbb51774f'
    @data = JSON.parse(data)
    #render :json => @data
  end

end
