class ReviewsController < ApplicationController

  def new
    @reviews = Review.new
  end

  def create
    @reviews = Review.new(review_params)

    if @reviews.save
      redirect_to review_path, notice: "Review was created!"
    else
      render :new, status: :unprocessable_entity
    end

  end



  private


  def review_params
    params.require(:review).permit(:content)
  end

end
