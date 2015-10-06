class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def edit

  end

  private

  def item_params
    params.require(:item).permit(:name, :cost, :quantity, :total_cost, :notes)
  end
end
