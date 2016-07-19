class StudentsController < ApplicationController

  before_action :is_authenticated
  before_action :is_admin, only: [:index]
  # do we need this next line?  I think we deleted it from the student model
  before_action :is_student, only: [:edit, :update]


  def index
    @users = User.all
    @cohorts = Cohort.all
   # @picks = Staffpick.all

    # render json: params[:cohort]

    if (params[:cohort] && params[:cohort][:cohort] && params[:cohort][:cohort] != '')
      @students = User.joins(:student, :cohorts).select('*').where(cohorts:{cohort: params[:cohort][:cohort]})
      # render json: @students
    else
      @students = User.joins(:student, :cohorts).select('*')
      # render json: params[:cohort]
    end
    # render json: @students
  end

  def show
    @user = User.find(params[:id])
    person = @user.student.id
    @review = Review.where(student_id: person)
    @brand = []
    @linkedin = []
    @resume = []
    @jobtracker = []
    @portfolio = []
    @review.each do |review|
      if review.review_type == 'brand'
        @brand.push(review)
      elsif review.review_type == 'linkedin'
        @linkedin.push(review)
      elsif review.review_type == 'resume'
        @resume.push(review)
      elsif review.review_type == 'jobtracker'
        @jobtracker.push(review)
      elsif review.review_type == 'portfolio'
        @portfolio.push(review)
      end
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @picks = Staffpick.create(staff_params)
    redirect_to root_path
  end

  def update
    if @current_user
      student = Student.find(params[:id])
      student.update(student_params)
      redirect_to student_path(student.user_id)
    end
  end

  private
  
  def student_params
     params.require(:student).permit(:brand, :linkedin, :resume, :jobtracker, :portfolio, :user_id => [])
  end

  def staff_params
    params.require(:picks).permit(:name, :url)
  end
end
