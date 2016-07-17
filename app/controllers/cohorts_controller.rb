class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.create(cohort_params)

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
