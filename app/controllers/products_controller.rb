class ProductsController < ApplicationController
  def index
    # list available products
    @products = ShopifyAPI::Product.all
  end

  def create
    # create a new product
    new_product = ShopifyAPI::Product.new
    new_product.title = params[:title]
    new_product.description = params[:description]
    new_product.save

    variant = new_product.variants.first
    variant.price = params[:price]
    variant.save
    # Todo: handler case where product save fails
    redirect_to products_path
  end

  def new
    # provides form for creating a new product
  end

  def edit
    # provides form for editing an exiting products
  end

  def update
    # updates an existing product
  end

  def destroy
    # delete an existing product
    product = ShopifyAPI::Product.find(params[:id])
    # Todo: handle case where product is not found
    product.destroy
    redirect_to products_path
  end
end
