class JobCategoriesController < ApplicationController
  before_action :set_job_category, only: [:show, :edit, :update, :destroy]

  # GET /job_categories
  # GET /job_categories.json
  def index
    @job_categories = JobCategory.order('created_at DESC')
    @jobs = Job.paginate(:page => params[:page], :per_page => 3).order('created_at DESC')
  end

  # GET /job_categories/1
  # GET /job_categories/1.json
  def show
    @job_categs = JobCategory.order("created_at DESC").limit(5)
    #latest three jobs
    @job = Job.order("created_at DESC").limit(3)
  end

  # GET /job_categories/new
  def new
    @job_category = current_user.job_categories.build
    #@job_category = JobCategory.new
  end

  # GET /job_categories/1/edit
  def edit
  end

  # POST /job_categories
  # POST /job_categories.json
  def create
    @job_category = current_user.job_categories.build(job_category_params)
    #@job_category = JobCategory.new(job_category_params)

    respond_to do |format|
      if @job_category.save
        format.html { redirect_to @job_category, notice: 'Job category was successfully created.' }
        format.json { render :show, status: :created, location: @job_category }
      else
        format.html { render :new }
        format.json { render json: @job_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_categories/1
  # PATCH/PUT /job_categories/1.json
  def update
    respond_to do |format|
      if @job_category.update(job_category_params)
        format.html { redirect_to @job_category, notice: 'Job category was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_category }
      else
        format.html { render :edit }
        format.json { render json: @job_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_categories/1
  # DELETE /job_categories/1.json
  def destroy
    @job_category.destroy
    respond_to do |format|
      format.html { redirect_to job_categories_url, notice: 'Job category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_category
      @job_category = JobCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_category_params
      params.require(:job_category).permit(:name, :user_id)
    end
end
