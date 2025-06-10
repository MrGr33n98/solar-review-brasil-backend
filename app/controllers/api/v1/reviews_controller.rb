class Api::V1::ReviewsController < ApplicationController
  def index
    if params[:company_id]
      reviews = Review.where(company_id: params[:company_id])
    else
      reviews = Review.all
    end
    render json: reviews, each_serializer: ReviewSerializer
  end

  def show
    review = Review.find(params[:id])
    render json: review, serializer: ReviewSerializer
  end
end
