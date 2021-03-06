class StoredMaterialsController < ApplicationController
  before_action :set_stored_material, only: [:show, :edit, :update, :destroy]

  # GET /stored_materials
  # GET /stored_materials.json
  def index
    @stored_materials = StoredMaterial.all
  end

  # GET /stored_materials/1
  # GET /stored_materials/1.json
  def show
  end

  # GET /stored_materials/new
  def new
    @scope_cycle = ScopeCycle.find(params[:scope_cycle_id])
    @stored_material = StoredMaterial.new
  end

  # GET /stored_materials/1/edit
  def edit
  @scope_cycle = ScopeCycle.find(params[:scope_cycle_id])
  end

  # POST /stored_materials
  # POST /stored_materials.json
  def create
    @stored_material = StoredMaterial.new(stored_material_params)

    respond_to do |format|
      if @stored_material.save
        @scope_cycle = @stored_material.scope_cycle
        format.html { redirect_to manage_scope_cycles_path(:scope_id => @scope_cycle.scope_id), notice: 'Materials Stored created' }
        format.json { render :show, status: :created, location: @stored_material }
      else
        format.html { render :new }
        format.json { render json: @stored_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stored_materials/1
  # PATCH/PUT /stored_materials/1.json
  def update
    respond_to do |format|
      if @stored_material.update(stored_material_params)
        @scope_cycle = @stored_material.scope_cycle
        format.html { redirect_to manage_scope_cycles_path(:scope_id => @scope_cycle.scope_id), notice: 'Materials Stored updated' }
        format.json { render :show, status: :ok, location: @stored_material }
      else
        format.html { render :edit }
        format.json { render json: @stored_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stored_materials/1
  # DELETE /stored_materials/1.json
  def destroy
    @stored_material.destroy
    respond_to do |format|
      format.html { redirect_to stored_materials_url, notice: 'Stored material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stored_material
      @stored_material = StoredMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stored_material_params
      params.require(:stored_material).permit(:scope_cycle_id, 

                                              material_line_items_attributes: [:id, :stored_material_id, :description, :stored_at_cycle_start, :received_this_cycle, :installed_this_cycle, :stored_at_cycle_end, :_destroy]
                                              )
    end
end
