class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    # require 'pry'; binding.pry
    @product = Product.new(product_params)

    if @product.save
      # flash.now[:notice] = "Su producto ha sido creado satisfactoriamente!"
      #flash.keep
      redirect_to @product, notice: "Su producto ha sido creado satisfactoriamente!"
    end
  rescue => e
    redirect_to new_product_path, notice: "No se ha podido crear su producto intente de nuevo"
  end

  def delete
    # Implementar la logica necesaria para Eliminar un producto
  end

  def edit
    
  end

  def update
    # Implementar la logica necesaria para editar un producto
    # Asegurarse de redirigir al usuario al producto editado
  end

  def price_with_taxes
    # require 'pry'; binding.pry
    @product = Product.find(params[:id])
    price_with_tax = @product.calculate_price_with_tax

    render :json => {price: price_with_tax, object_id: @product.id }
  end

  def api_products
    @products = {products: Product.all}
    render :json => @products
  end

  private
  # Strong Params
  def product_params
    params.require(:product).permit(:name, :summary, :price, stock: [:products_available, :refence_stock])
  end
end
