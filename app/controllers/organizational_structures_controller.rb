class OrganizationalStructuresController < ApplicationController
  before_action :set_organizational_structure, only: [:show, :edit, :update, :destroy]

  # GET /organizational_structures
  # GET /organizational_structures.json
  def index
    @organizational_structures = OrganizationalStructure.all
  end

  # GET /organizational_structures/1
  # GET /organizational_structures/1.json
  def show
  end

  # GET /organizational_structures/new
  def new
    @organizational_structure = OrganizationalStructure.new
  end

  # GET /organizational_structures/1/edit
  def edit
  end

  # POST /organizational_structures
  # POST /organizational_structures.json
  def create
    @organizational_structure = OrganizationalStructure.new(organizational_structure_params)

    respond_to do |format|
      if @organizational_structure.save
        format.html { redirect_to @organizational_structure, notice: 'Organizational structure was successfully created.' }
        format.json { render :show, status: :created, location: @organizational_structure }
      else
        format.html { render :new }
        format.json { render json: @organizational_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizational_structures/1
  # PATCH/PUT /organizational_structures/1.json
  def update
    respond_to do |format|
      if @organizational_structure.update(organizational_structure_params)
        format.html { redirect_to @organizational_structure, notice: 'Organizational structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @organizational_structure }
      else
        format.html { render :edit }
        format.json { render json: @organizational_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizational_structures/1
  # DELETE /organizational_structures/1.json
  def destroy
    @organizational_structure.destroy
    respond_to do |format|
      format.html { redirect_to organizational_structures_url, notice: 'Organizational structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organizational_structure
      @organizational_structure = OrganizationalStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organizational_structure_params
      params.require(:organizational_structure).permit(:name, :description, :created_at, :updated_at)
    end
end
