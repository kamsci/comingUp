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
    # @cohorts = Cohort.all
    # @users = User.all

    if (params[:cohort] && params[:cohort][:cohort] && params[:cohort][:cohort] != '')
      @students = User.joins(:student, :cohorts).select('*').where(cohorts:{cohort: params[:cohort][:cohort]})
      @deliverables = Deliverable.select('*').joins(:cohort).where(cohorts:{cohort: params[:cohort][:cohort]})
      @cohorts = Cohort.select('*').where(id: user_cohort)
    else
      @students = User.joins(:student, :cohorts).select('*')
      @deliverables = Deliverable.joins(:cohort).select('*')
      @cohorts = Cohort.all
    end

      # render json: @cohorts

    # if (@current_user.admin == false)
    #   @students = User.select('*').joins(:student, :cohorts)
    #   # .where(cohort_id: user_cohort)
    #   @deliverables = Deliverable.select('*').joins(:cohort).where(cohort_id: user_cohort)
    #   @cohorts = Cohort.select('*').where(id: user_cohort)
    # elsif @current_user.admin == true
    #   @students = User.joins(:student, :cohorts).select('*')
    #   @deliverables = Deliverable.joins(:cohort).select('*')
    #   @cohorts = Cohort.all
    # end 

  end

  private

  def user_cohort
    current_student = Student.where(user_id: @current_user.id).pluck(:id)
    expected_cohort = CohortsStudents.where(student_id: current_student).pluck(:cohort_id)
    return expected_cohort
  end

end

