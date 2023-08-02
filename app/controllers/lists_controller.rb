class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
  end



private

# manque ID ITEMS?
  def list_params
    params.require(:list).permit(:list_name, :description)
  end

  def set_list
    @listing = Listing.find(params[:id])
  end
end
