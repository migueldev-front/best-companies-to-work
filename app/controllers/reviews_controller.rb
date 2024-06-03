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



private

def review_params
  params.require(:review).permit(:comment)
end


end
