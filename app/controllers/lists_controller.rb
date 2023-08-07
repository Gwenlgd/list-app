class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @lists = List.all
    @lists_user = current_user.lists
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    @list.save
    redirect_to list_path(@list)
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
    params.require(:list).permit(:name_list, :description)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
