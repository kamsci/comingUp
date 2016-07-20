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

    begin
      data = RestClient.get 'https://api.meetup.com/2/open_events?sign=true&photo-host=public&zip=' + zip + '&country=' + country + '&topic=' + @topic + '&city=' + city + '&state=WA&page=20&key=23145310778c71694fbb51774f'
    rescue
      flash[:danger] = 'No Search Results, please try again'
      puts 'I am rescued'
    end
     #  @data = JSON.parse(data)

    if data == nil
      flash[:danger] = 'No Search Results, please try again'
    else
      @data = JSON.parse(data)
    end

    @picks = Staffpick.all
    @cohorts = Cohort.all
    @users = User.all
    @cohorts = Cohort.all

    if (params[:cohort] && params[:cohort][:cohort] && params[:cohort][:cohort] != '')
      @students = User.joins(:student, :cohorts).select('*').where(cohorts:{cohort: params[:cohort][:cohort]})
      @deliverables = Deliverable.select('*').joins(:cohort).where(cohorts:{cohort: params[:cohort][:cohort]})
    else
      @students = User.joins(:student, :cohorts).select('*')
      @deliverables = Deliverable.joins(:cohort).select('*')
    end

  end

end

