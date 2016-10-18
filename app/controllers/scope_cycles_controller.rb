class ScopeCyclesController < ApplicationController
  before_action :authenticate_org_admin!
  before_action :set_scope_cycle, only: [:show, :edit, :update, :destroy]

  # GET /scope_cycles
  # GET /scope_cycles.json
  def index
    @scope_cycles = ScopeCycle.all
  end

  def manage
    @cycles = ScopeCycle.where('scope_id = ?', params[:scope_id])
    @scope_cycle = @cycles.order('created_at').last
    @scope = Scope.find(params[:scope_id])
    @billing_periods = BillingPeriod.all
    @organizations = Organization.all
    @csi_divisions = CsiDivision.all

    @jobs = Job.where('scope_cycle_id = ?', @scope_cycle.id)

  end

  # GET /scope_cycles/1
  # GET /scope_cycles/1.json
  def show
  end

  # GET /scope_cycles/new
  def new
    @scope_cycle = ScopeCycle.new
  end

  # GET /scope_cycles/1/edit
  def edit
  end

  # POST /scope_cycles
  # POST /scope_cycles.json
  def create
    @scope_cycle = ScopeCycle.new(scope_cycle_params)

    respond_to do |format|
      if @scope_cycle.save
        format.html { redirect_to @scope_cycle, notice: 'Scope cycle was successfully created.' }
        format.json { render :show, status: :created, location: @scope_cycle }
      else
        format.html { render :new }
        format.json { render json: @scope_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scope_cycles/1
  # PATCH/PUT /scope_cycles/1.json
  def update
    respond_to do |format|
      if @scope_cycle.update(scope_cycle_params)
        format.html { redirect_to @scope_cycle, notice: 'Scope cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @scope_cycle }
      else
        format.html { render :edit }
        format.json { render json: @scope_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scope_cycles/1
  # DELETE /scope_cycles/1.json
  def destroy
    @scope_cycle.destroy
    respond_to do |format|
      format.html { redirect_to scope_cycles_url, notice: 'Scope cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scope_cycle
      @scope_cycle = ScopeCycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scope_cycle_params
      params.require(:scope_cycle).permit(:billing_period_id, :scope_id, :contributor_id, :owner_id, :cycle_start_date, 
                                          :cycle_end_date, :owner_approved, :contributor_approved, :cycle_suspended, 
                                          :cycle_cancelled, :original_contract_amt, :completed_to_date_total, 
                                          :stored_materials_total, :retainage, :less_owner_purchases, :less_previous_pay_request, 
                                          :amount_due,

                                          job_attributes: [:description, :value, :previous_complete, :this_application, 
                                                      :completed_to_date_percent, :completed_to_date_value, :scope_cycle_id],

                                          stored_materials_attributes: [:description, :scope_cycle_id, :stored_at_cycle_start, 
                                                      :received_this_cycle, :installed_this_cycle, :stored_at_cycle_end],

                                          document_attributes: [:name, :scope_cycle_id, :doc]
                                          )
    end
end
