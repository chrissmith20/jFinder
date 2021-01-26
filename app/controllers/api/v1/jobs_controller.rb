class Api::V1::JobsController < ApplicationController

  def index
    render json: Job.all
    binding.pry
  end

  def show
    job = Job.find(params[:id])
    render json: job
  end

  def new
    job = Job.new
  end

  def create
    job = Job.new(job_params)
  end

  def update
    job = Job.find(params[:id])
    render json: job
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy
  end

  private

  def job_params
    params.require(:job).permit(:position, :company, :description, :salary, :location, :date, :url)
  end

end
