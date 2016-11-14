class SovsController < ApplicationController
  before_action :set_sov, only: [:show, :edit, :update, :destroy]

    respond_to :html
    respond_to :js



  # GET /sovs
  # GET /sovs.json
  def index
    @scope_cycle = ScopeCycle.find(params[:scope_cycle_id])   
    @sov = Sov.where("scope_cycle_id = ?", params[:scope_cycle_id])     
         
          
          if @current_sov.blank?
          else  
                @sov = Sov.where("scope_cycle_id = ?", params[:scope_cycle_id])
                @jobs = Job.where('sov_id = ?', @sov.id)

                  if @jobs.blank?
                        @jobs = 'no jobs exist'
                  else
                      @jobs = Job.where('sov_id = ?', @sov.id)
                  end

          end
    
  end

  # GET /sovs/1
  # GET /sovs/1.json
  def show
  end

  # GET /sovs/new
  def new
    @scope_cycle = ScopeCycle.find(params[:scope_cycle_id])
    @sov = Sov.new
    
  end

  # GET /sovs/1/edit
  def edit
    @scope_cycle = ScopeCycle.find(params[:scope_cycle_id])
  end

  # POST /sovs
  # POST /sovs.json
  def create
    @sov = Sov.new(sov_params)

    respond_to do |format|
      if @sov.save
          @scope_cycle = @sov.scope_cycle
        format.html { redirect_to manage_scope_cycles_path(:scope_id => @scope_cycle.scope_id), notice: 'SOV created' }
        format.json { render :show, status: :created, location: @sov }
      else
        format.html { render :new }
        format.json { render json: @sov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sovs/1
  # PATCH/PUT /sovs/1.json
  def update
    respond_to do |format|
      if @sov.update(sov_params)
          @scope_cycle = @sov.scope_cycle
        format.html { redirect_to manage_scope_cycles_path(:scope_id => @scope_cycle.scope_id), notice: 'SOV updated' }
        format.json { render :show, status: :ok, location: @sov }
      else
        format.html { render :edit }
        format.json { render json: @sov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sovs/1
  # DELETE /sovs/1.json
  def destroy
    @sov.destroy
    respond_to do |format|
      format.html { redirect_to sovs_url, notice: 'Sov was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sov
      @sov = Sov.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sov_params
      params.require(:sov).permit(:scope_cycle_id, 

                                  jobs_attributes: [:id, :description, :value, :previous_complete, :this_application, :completed_to_date_percent, :completed_to_date_value, :sov_id, :_destroy]
                                  )
    end
end
