class SearchesController < ApplicationController

  def new
    @search = Search.new
    @categories = Service.uniq.pluck(:category)
  end

  
  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @services = Service.all
  end
 
  private
    def search_params
      params.require(:search).permit(:keywords, :categories, :min_price, :max_price )
    end
end
