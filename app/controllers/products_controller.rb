class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product =  Product.find(params[:id])
  end

  def create
    @product =  Product.create(prod_params)
    redirect_to products_path
  end

  def data
    prod =  Product.find(params[:id])
    render json: ProductSerializer.serialize(prod)
  end

  def inventory
    prod = Product.find(params[:id])
    render json: ProductSerializer.serializeInventory(prod)
  end

  def description
    prod = Product.find(params[:id])
    render json: ProductSerializer.serializeDescription(prod)
  end

  private

  def prod_params
    params.require(:product).permit(:name, :price, :description)
  end
end
