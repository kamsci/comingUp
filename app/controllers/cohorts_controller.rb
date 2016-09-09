class CohortsController < ApplicationController

  before_action :is_authenticated

  before_action :is_admin, only: [:edit, :update]

  def index
    # @students = User.joins(:students).group(:student_id)
    # @cohorts = Cohort.select('*').joins(:students)
    # @students = Cohort.select([:id, :cohort]).jgroup(:id, :cohort)
    # @user = Student.find(@current_user.id == user_id)
    # @u = user.student.id
    @cohorts = Cohort.all.order('cohort ASC')
    @students = User.joins(:student, :cohorts).select('*')
    @deliverables = Deliverable.all
    # render json: @user.student
    # render json: @deliverables
    
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.create(cohort_params)
    # render josn: @cohort

    respond_to do |format|
      format.html { redirect_to students_path }
      format.js { }
    end

  end

  private
  def cohort_params
    params.require(:cohort).permit(:cohort)
  end

end
