# frozen_string_literal: true

class ProductsController < ApplicationController
  include Pagy::Backend

  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @query = Product.ransack(params[:query])
    @pagy, @products = pagy(@query.result(distinct: true))
  end

  def show; end

  def new
    @product = Product.new
  end

  def edit; end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path, notice: 'Product was successfully destroyed.', status: :see_other
  end

  private

  def set_product
    @product = Product.friendly.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
