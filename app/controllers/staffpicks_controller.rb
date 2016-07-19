class StaffpicksController < ApplicationController
   before_action :is_authenticated

  def index
    @pick = Staffpick.all    
  end

  def create
    @pick = Staffpick.create(staff_params)
    redirect_to root_path
  end

  private

  def staff_params
    params.require(:staffpick).permit(:name, :url)
  end
end
