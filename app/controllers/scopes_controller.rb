class ScopesController < ApplicationController
  before_action :authenticate_org_admin!
  before_action :set_scope, only: [:show, :edit, :update, :destroy]

  respond_to :html
  respond_to :js

  # GET /scopes
  # GET /scopes.json
  def index
    @scopes = Scope.all
    #@scopes = Scope.where("project_id = ?", params[:project_id]) 
    @organizations = Organization.all
    @other_organizations = Organization.where('id != ?', current_org_admin.organization.id) 
    @csi_divisions = CsiDivision.all
    @billing_periods = BillingPeriod.all
  end

  # GET /scopes/1
  # GET /scopes/1.json
  def show
  end

  def project_scopes
    @project = Project.find(params[:project_id])
    @scopes = Scope.where("project_id = ?", params[:project_id]) 
    @organizations = Organization.all
    @other_organizations = Organization.where('id != ?', current_org_admin.organization.id) 
    @csi_divisions = CsiDivision.all
    @billing_periods = BillingPeriod.all
  end

  def contributing_scopes

  end

  # GET /scopes/new
  def new
    @scope = Scope.new
    @project = Project.find(params[:project_id])
    @other_organizations = Organization.where('id != ?', current_org_admin.organization.id)
    @billing_periods = BillingPeriod.all
    @csi_divisions = CsiDivision.all
  end

  # GET /scopes/1/edit
  def edit
     @project = Project.find(params[:project_id])
    @other_organizations = Organization.where('id != ?', current_org_admin.organization.id)
    @billing_periods = BillingPeriod.all
    @csi_divisions = CsiDivision.all
  end

  # POST /scopes
  # POST /scopes.json
  def create
    @scope = Scope.new(scope_params)
    @project = @scope.project
    respond_to do |format|
      if @scope.save
        format.js
        format.html 
        format.json { render :show, status: :created, location: @scope }
      else
        format.js
        format.html { render :new }
        format.json { render json: @scope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scopes/1
  # PATCH/PUT /scopes/1.json
  def update
    
    respond_to do |format|
      @project = @scope.project
      if @scope.update(scope_params)
        
        format.js
        format.html 
        format.json { render :show, status: :ok, location: @scope }
      else
        format.js
        format.html { render :edit }
        format.json { render json: @scope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scopes/1
  # DELETE /scopes/1.json
  def destroy
    @scope = Scope.find(params[:id])
    @scope.destroy
      respond_to do |format|
       format.js 
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scope
      @scope = Scope.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scope_params
      params.require(:scope).permit(:name, :description, :visible_to_public, :csi_division_id, :billing_period_id, :sov_used, :stored_materials_used, :owner_id, :contributor_id, :send_invite_to, :project_id, :contract_number, :contract_amount)
    end
end
