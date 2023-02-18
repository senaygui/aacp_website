class VacanciesController < ApplicationController
  
  def index
    @search = Vacancy.search(params[:q])
    @vacancies = @search.result.order("created_at DESC").page(params[:page])
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end


end
