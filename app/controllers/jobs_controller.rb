class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_employer!, except:[:index, :show]

  #tell impressionist where to count
  #impressionist actions: [:show], unique: [:session_hash]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.paginate(:page => params[:page], :per_page => 3).order('created_at DESC')
    @job_categs = JobCategory.order("created_at DESC").limit(5)
    @job = Job.order("created_at DESC").limit(3)

    
    @job_views = Job.order(visits: :asc).limit(5)
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  #applying
  def upvote
    @job = Job.find(params[:id])
    @job.upvote_by current_user
    redirect_to :back
  end
  
  def downvote
    @job = Job.find(params[:id])
    @job.downvote_by current_user
    redirect_to :back
  end

  # GET /jobs/new
  def new
    @job = current_employer.jobs.build
    #@job = Job.new
    @jobs = Job.all.order('created_at DESC')
    render layout: false
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = current_employer.jobs.build(job_params)
    #@job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:logo, :title, :closes_on, :details, :salary_from, :salary_to, :type, :responsibilities, :qualifications, :town_id, :job_category_id, :user_id, :employer_id)
    end
end