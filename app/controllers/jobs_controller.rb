class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  respond_to :html
  respond_to :js

  # GET /jobs
  # GET /jobs.json
  def index
    @scope_cycle = ScopeCycle.find(params[:scope_cycle_id])
    @jobs = Job.where("scope_cycle_id = ?", params[:scope_cycle_id]) 
    @job = Job.new
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
    @scope_cycle = ScopeCycle.find(params[:scope_cycle_id])
  end

  # GET /jobs/1/edit
  def edit
    @scope_cycle = ScopeCycle.find(params[:scope_cycle_id])
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)
    @scope_cycle = @job.scope_cycle
    respond_to do |format|
      if @job.save
        format.js 
        format.html 
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
    @job = Job.find(params[:id])
    @job.destroy
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:description, :value, :previous_complete, :this_application, :completed_to_date_percent, :completed_to_date_value, :sov_id)
    end
end
