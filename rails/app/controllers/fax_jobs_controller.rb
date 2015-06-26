class FaxJobsController < ApplicationController
  before_action :set_fax_job, only: [:show, :edit, :update, :destroy]

  # GET /fax_jobs
  # GET /fax_jobs.json
  def index
    @fax_jobs = FaxJob.all
  end

  # GET /fax_jobs/1
  # GET /fax_jobs/1.json
  def show
  end

  # GET /fax_jobs/new
  def new
    @fax_job = FaxJob.new
  end

  # GET /fax_jobs/1/edit
  def edit
  end

  # POST /fax_jobs
  # POST /fax_jobs.json
  def create
    Rails.logger.debug "Creating a FAX"
    @fax_job = FaxJob.new(fax_job_params)

    respond_to do |format|
      if @fax_job.save
	@fax_job.send_fax
        format.html { redirect_to @fax_job, notice: 'Fax job was successfully created.' }
        format.json { render :show, status: :created, location: @fax_job }
      else
        format.html { render :new }
        format.json { render json: @fax_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fax_jobs/1
  # PATCH/PUT /fax_jobs/1.json
  def update
    respond_to do |format|
      if @fax_job.update(fax_job_params)
        format.html { redirect_to @fax_job, notice: 'Fax job was successfully updated.' }
        format.json { render :show, status: :ok, location: @fax_job }
      else
        format.html { render :edit }
        format.json { render json: @fax_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fax_jobs/1
  # DELETE /fax_jobs/1.json
  def destroy
    @fax_job.destroy
    respond_to do |format|
      format.html { redirect_to fax_jobs_url, notice: 'Fax job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fax_job
      @fax_job = FaxJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fax_job_params
      params.require(:fax_job).permit(:fax, :file_name, :sender_email, :sender_name)
    end
end
