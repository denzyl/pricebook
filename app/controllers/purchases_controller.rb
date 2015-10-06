class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update]

  before_filter :authorize

  def index
    @purchases = Purchase.all.order("created_at DESC")
  end

  def new
    @purchase = Purchase.new
    1.times { @purchase.items.build }
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.user = current_user
    if @purchase.save
      flash[:notice] = "Boomsauce. Purchase created."
      redirect_to purchases_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @purchase.update(purchase_params)
      redirect_to @purchase
    else
      render 'edit'
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  private

  def purchase_params
    params.require(:purchase).permit!
  end

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

end
