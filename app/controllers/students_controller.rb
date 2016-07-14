class StudentsController < ApplicationController

  before_action :is_authenticated
  before_action :is_admin, only: [:index]
  before_action :is_student, only: [:edit, :update]

  @users = User.all
  @students = Student.all

  def index
      @students = Student.all
      @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # render json: @user.student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    Student.find(params[:id]).update(student_params)
    redirect_to student_path(params[:id])
  end

  private
  
  def student_params
     params.require(:student).permit(:brand, :linkedin, :resume, :jobtracker, :portfolio, :user_id => [])
  end
end
