class DeliverablesController < ApplicationController

  before_action :is_authenticated
  before_action :is_admin, only: [:edit, :update]

  def new
    @deliverable = Deliverable.new
    # render json: @deliverable
  end

  def create
    deliverable = Deliverable.create(deliverable_params)
    redirect_to students_path
  end

  def edit
    # @deliverable = Deliverable.find_by_id(params[:id])
  end

  def update
    Deliverable.find_by_id(params[:id]).update(deliverable_params)
  end

  private

  def deliverable_params
    params.require(:deliverable).permit(:deliverable_type, :deliverable_name, :notes, :due_date, :cohort_id)
  end
end
