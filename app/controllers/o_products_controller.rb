class OProductsController < ApplicationController
  # GET /o_products
  # GET /o_products.xml
  def index
    @o_products = OProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @o_products }
    end
  end

  # GET /o_products/1
  # GET /o_products/1.xml
  def show
    @o_product = OProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @o_product }
    end
  end

  # GET /o_products/new
  # GET /o_products/new.xml
  def new
    @o_product = OProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @o_product }
    end
  end

  # GET /o_products/1/edit
  def edit
    @o_product = OProduct.find(params[:id])
  end

  # POST /o_products
  # POST /o_products.xml
  def create
    @o_product = OProduct.new(params[:o_product])

    respond_to do |format|
      if @o_product.save
        format.html { redirect_to(@o_product, :notice => 'O product was successfully created.') }
        format.xml  { render :xml => @o_product, :status => :created, :location => @o_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @o_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /o_products/1
  # PUT /o_products/1.xml
  def update
    @o_product = OProduct.find(params[:id])

    respond_to do |format|
      if @o_product.update_attributes(params[:o_product])
        format.html { redirect_to(@o_product, :notice => 'O product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @o_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /o_products/1
  # DELETE /o_products/1.xml
  def destroy
    @o_product = OProduct.find(params[:id])
    @o_product.destroy

    respond_to do |format|
      format.html { redirect_to(o_products_url) }
      format.xml  { head :ok }
    end
  end
  
end
