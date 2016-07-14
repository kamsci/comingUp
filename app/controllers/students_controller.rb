class StudentsController < ApplicationController
  def index
    # @students = Student.all
    @users = User.all
  end

  def show
    # @student = Student.find(params[:id])
    @user = User.find_by_id(params[:id])
  end

  def edit
    # @student = Student.find(params[:id])
  end

  def update
    # Student.find(params[:id]).update(student_params)
    redirect_to student_path(params[:id])
  end

  private
  # def student_params
  #   params.require(:student).permit(:user_id, )
  # end
end
