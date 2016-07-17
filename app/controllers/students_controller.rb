class StudentsController < ApplicationController

  before_action :is_authenticated
  before_action :is_admin, only: [:index]
  # do we need this next line?  I think we deleted it from the student model
  before_action :is_student, only: [:edit, :update]

  # @users = User.all
  # @students = Student.all

  def index
      @students = Student.all
      @users = User.all
      @cohorts = Cohort.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
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
end
