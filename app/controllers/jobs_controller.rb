class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
  end

  private

  def job_params
    params.require(:job).permit(:position, :company, :description, :salary, :location, :date, :url)
  end

end
