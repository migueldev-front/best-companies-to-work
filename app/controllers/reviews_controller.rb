class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @reviews = Review.find(params[:id])
  end

  def new
    @reviews = Review.new
  end

  def create
    @reviews = Review.new(review_params)

    if @reviews.save
      redirect_to reviews_path, notice: "Review created!"
    else
      render :new, status: :unprocessable_entity
    end
  end





private

  def review_params
    params.require(:review).permit(:comment)
  end





end
