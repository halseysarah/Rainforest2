class ReviewsController < ApplicationController
  before_filter :ensure_logged_in, only: [:create, :destroy]

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(
      comment: params[:review][:comment],
      product_id: @product.id,
      user_id: current_user.id
      )

       if @review.save
      redirect_to products_path, notice: 'Review created successfully'
    	else
      render 'products/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:comment, :product_id)
  end

  def load_product
    @product = Product.find(params[:product_id])
  end
end

