class StudentsController < ApplicationController
  def index
    @students = Student.all
    @users = User.all
  end

  def show
    @students = Student.find(params[:id])
    @user = User.all
    # render json: @user
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
