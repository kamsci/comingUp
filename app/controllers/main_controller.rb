class MainController < ApplicationController

  def index
    zip = '98101'
    country = 'USA'
    city = 'Seattle'

    if !params[':topic'] || params[':topic'] == ''
      @topic = 'Web'
    else
      @topic = params[':topic'].gsub(/\s+/, "")
    end

      data = RestClient.get 'https://api.meetup.com/2/open_events?sign=true&photo-host=public&zip=' + zip + '&country=' + country + '&topic=' + @topic + '&city=' + city + '&state=WA&page=20&key=23145310778c71694fbb51774f'
      
      puts '123123123', data

    if data['results'] == [] || data['code'] == '400 Bad Request' 
      flash[:danger] = 'No Search Results, please try again'
    else
      @data = JSON.parse(data)
    end

    @picks = Staffpick.all
  end

end
