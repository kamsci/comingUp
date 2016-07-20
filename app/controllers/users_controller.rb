class UsersController < ApplicationController

  before_action :is_authenticated
  before_action :is_admin, except: [:edit, :update]

  # create a new blank template for user, direct to new user page
  def new
    @user = User.new
  end

  # create a new user in the db, redirect to admin profile
  def create
    user = User.new(user_params)
    if user.save && !user.admin
      user.create_student
      CohortsStudents.create(cohort_id: params[:cohorts_students][:cohort_id], student_id: user.student.id)
      redirect_to students_path
    elsif user.save && user.admin
      redirect_to students_path
    else
      flash[:danger] = user.errors.messages
      redirect_to new_user_path
    end
  end

  # pull user info, populate form, pull up form
  def edit
    @user = User.find_by_id(params[:id])
  end

  # update already existing user
  def update
    User.find(params[:id]).update(user_params)

    person = User.find(params[:id])

    if person.student && @current_user.admin
      check = CohortsStudents.where(student_id: person.student.id).update_all(cohort_id: params[:cohorts_students][:cohort_id])
    end

    redirect_to students_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin, :cohort_ids => [])
  end

end
