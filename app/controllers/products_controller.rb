# frozen_string_literal: true

class ProductsController < ApplicationController
  include Pagy::Backend

  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @query = Product.newest_first.ransack(params[:query])
    @pagy, @products = pagy(@query.result(distinct: true))
  end

  # def show; end

  def new
    @product = Product.new
  end

  # def edit; end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash.now[:notice] = 'Product was successfully created.'
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      flash.now[:notice] = 'Product was successfully updated.'
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    flash.now[:notice] = 'Product was successfully destroyed.'
    redirect_to root_path, status: :see_other
  end

  private

  def set_product
    @product = Product.friendly.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, images: [])
  end
end
