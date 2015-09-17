class PurchasesController < ApplicationController

  before_filter :authorize

  def new
    @purchase = Purchase.new
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

  def show
  end

  private

  def purchase_params
    params.require(:purchase).permit(:date, :place, :total_amount)
  end

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

end
