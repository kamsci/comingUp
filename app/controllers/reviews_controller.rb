class ReviewsController < ApplicationController
  
  def index
    @user = User.find(16)
    render json: @user.students.reviews
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    render json: @review
  end

  def edit
  end

  def show
  end

  private

  def review_params
    params.require(:review).permit(:review_type, :reviewer_name, :review_content, :student_id)
  end

end
