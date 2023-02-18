class EventsController < ApplicationController
  def index
    @search = Event.search(params[:q])
    @events = @search.result.order("created_at DESC").page(params[:page])
  end

  def show
    @event = Event.find(params[:id])
  end
end
