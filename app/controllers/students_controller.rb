class StudentsController < ApplicationController

  before_action :is_authenticated
  before_action :is_admin, only: [:index]

  @users = User.all
  @students = Student.all

  def index
    # if @current_user && @student.users.admin == true
      @students = Student.all
      @users = User.all
    # else
    #   redirect_to root_path
    # end
  end

  def show
    @students = Student.find(params[:id])
    @user = User.all
  end

  def edit

    @student = Student.find(params[:id])

    # @student = Student.find_by_id(params[:id])

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
