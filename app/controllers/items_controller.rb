class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]

  def show
  end

  def new
    @item = Item.new
  end

  # def create
  #   @item = Item.new(item_params)
  #   @item.save
  #   redirect_to item_path(@item)
  # end

    # def create
    # @item = Item.new(item_params)
    #   if @item.save
    #   redirect_to :action => report_path(@report)
    #   else

    #   end
    # end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to(@item)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path, status: :see_other
  end


  private
  def item_params
    params.require(:item).permit(:name_item, :item_description, :price, :item_category, :quantity)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
