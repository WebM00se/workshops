class ProductsController < ApplicationController
  before_action :auth_user, only: [:new, :edit, :update, :destroy, :create]
  before_action :can_edit?, only: [:update, :edit]

  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    self.product = Product.new(product_params)
    self.product.user_id = current_user.id
    self.product.valid?
    if product.save
      category.products << product
      redirect_to category_product_url(category, product), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if self.product.update(product_params)
      redirect_to category_product_url(category, product), notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /products/1
  def destroy
    product.destroy
    redirect_to category_products_path(product.category.id), notice: 'Product was successfully destroyed.'
  end

  private

  def can_edit?
    unless current_user.products.find_by(id: params[:id])
      flash[:error] = 'You are not allowed to edit this product.'
      redirect_to category_product_url(params[:category_id], params[:id])
    end
  end

  def auth_user
    redirect_to new_user_session_path unless user_signed_in? || current_user.try(:admin?)
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id)
  end
end
