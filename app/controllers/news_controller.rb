class NewsController < ApplicationController
  def index
    @search = News.search(params[:q])
    @news = @search.result.order("created_at DESC").page(params[:page])
  end

  def show
    @new = News.find(params[:id])
  end
end
