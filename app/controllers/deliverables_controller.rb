class DeliverablesController < ApplicationController

  before_action :is_authenticated
  before_action :is_admin, only: [:edit, :update]

  def new
    @deliverable = Deliverable.new
    # render json: @deliverable
  end

  def create
    
  end

  def edit
  end

  def update
    
  end

  private

  def deliverable_params
    params.require(:deliverable).permit(:deliverable_type, :deliverable_name, :notes, :due_date, :cohort_id)
  end
end
