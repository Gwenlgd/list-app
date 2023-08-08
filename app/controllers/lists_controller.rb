class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @lists = List.all
    @lists_user = current_user.lists
    @other_lists = @lists.where.not(user_id: current_user)
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    if @list.save
      redirect_to list_path(@list)
    else
      redirect_to lists_path
    end
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to(@list)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name_list, :description, :list_category)
  end

  def item_params
    params.require(:item).permit(:name_item, :item_description, :price, :item_category, :quantity)
  end

  def set_list
    @list = List.find(params[:id])
  end

  def allowed_params
    params.require(:list).permit(list_items_attributes: [:item_id])
  end
end
