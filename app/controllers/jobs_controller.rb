class JobsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]
  def index
    if params[:category].present?
    # Eğer yukarıdan bir kategori parametresi gelmişse sadece onu getir
    @jobs = Job.where(category: params[:category])
    else
    # Gelmemişse her zamanki gibi tüm ilanları getir
    @jobs = Job.all
    end
  end
  def new
    @job = Job.new
  end
  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end
  def show
    @job = Job.find(params[:id])
  end
  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to jobs_path
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path, status: :see_other
  end



  private
  def job_params
    params.require(:job).permit(:title, :company, :url, :category)
  end
end
