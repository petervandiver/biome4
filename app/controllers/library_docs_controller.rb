class LibraryDocsController < ApplicationController
  
  before_action :authenticate_org_admin!
  before_action :set_library_doc, only: [:show, :edit, :update, :destroy]

  respond_to :html
  respond_to :js

  # GET /library_docs
  # GET /library_docs.json
  def index
    @library_docs = LibraryDoc.all.order('created_at DESC')
  end

  # GET /library_docs/1
  # GET /library_docs/1.json
  def show
  end

  # GET /library_docs/new
  def new
    @library_doc = LibraryDoc.new
  end

  # GET /library_docs/1/edit
  def edit
  end

  # POST /library_docs
  # POST /library_docs.json
  def create
    @library_doc = LibraryDoc.new(library_doc_params)
    respond_to do |format|
      if @library_doc.save
        format.js 
        format.html
        format.json { render :show, status: :created, location: @library_doc }
      else
        format.html { render :new }
        format.json { render json: @library_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /library_docs/1
  # PATCH/PUT /library_docs/1.json
  def update
    respond_to do |format|
      if @library_doc.update(library_doc_params)
        format.js
        format.html 
        format.json { render :show, status: :ok, location: @library_doc }
      else
        format.html { render :edit }
        format.json { render json: @library_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_docs/1
  # DELETE /library_docs/1.json
  def destroy
    @library_doc = LibraryDoc.find(params[:id])
    @library_doc.destroy
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library_doc
      @library_doc = LibraryDoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def library_doc_params
      params.require(:library_doc).permit(:name, :doc)
    end
end
