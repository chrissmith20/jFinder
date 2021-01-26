class Api::V1::ScrapersController < ApplicationController

  def index
    render json: Scraper.all
  end

  def show
    scraper = Scraper.find(params[:id])
  end

  def new
    scraper = Scraper.new
  end

end
