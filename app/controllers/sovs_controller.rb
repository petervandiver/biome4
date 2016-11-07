class SovsController < ApplicationController
  before_action :set_sov, only: [:show, :edit, :update, :destroy]

  # GET /sovs
  # GET /sovs.json
  def index
    @sovs = Sov.all
  end

  # GET /sovs/1
  # GET /sovs/1.json
  def show
  end

  # GET /sovs/new
  def new
    @sov = Sov.new
  end

  # GET /sovs/1/edit
  def edit
  end

  # POST /sovs
  # POST /sovs.json
  def create
    @sov = Sov.new(sov_params)

    respond_to do |format|
      if @sov.save
        format.html { redirect_to @sov, notice: 'Sov was successfully created.' }
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
        format.html { redirect_to @sov, notice: 'Sov was successfully updated.' }
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

                                  jobs_attributes: [:description, :value, :previous_complete, :this_application, :completed_to_date_percent, :completed_to_date_value, :sov_id]
                                  )
    end
end
