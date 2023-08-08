class ReportsController < ApplicationController
  load_and_authorize_resource :list
  before_action :set_report, only: :destroy

  # def show
  #   @items = Report.name_item
  # end

  def new
    @report = Report.new
    # @items = Items.all
    @list = List.find(params[:list_id])
  end

  def create
    @lists = List.all
    @list = List.find(params[:list_id])

    params[:report][:item].reject!(&:blank?)

    report_params[:item_id].each do |report|
      @report = Report.new(item_id: report)
      @report.list = @list
      @report.save!
    end
    redirect_to list_path(@list)
  end


  def destroy
    @report.destroy
    redirect_to report_path(@report.list), status: :see_other
  end

  private
  def set_report
    @report = Report.find(params[:id])
  end

  def report_params
    params.require(:report).permit(list_id: [], item_id: [])
  end
end
