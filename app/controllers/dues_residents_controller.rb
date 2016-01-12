class DuesResidentsController < ApplicationController
  autocomplete :resident, :name
  before_action :set_dues_resident, only: [:show, :edit, :update, :destroy]

  # GET /dues_residents
  # GET /dues_residents.json
  def index
    @dues_residents = DuesResident.all
  end

  # GET /dues_residents/1
  # GET /dues_residents/1.json
  def show
  end

  # GET /dues_residents/new
  def new
    @dues_resident = DuesResident.new
    @parents = Resident.where(:parent_id => nil).pluck(:name, :id)
  end

  # GET /dues_residents/1/edit
  def edit
  end

  # POST /dues_residents
  # POST /dues_residents.json
  def create
    @dues_resident = DuesResident.new(dues_resident_params)

    respond_to do |format|
      if @dues_resident.save
        format.html { redirect_to @dues_resident, notice: 'Dues resident was successfully created.' }
        format.json { render :show, status: :created, location: @dues_resident }
      else
        format.html { render :new }
        format.json { render json: @dues_resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dues_residents/1
  # PATCH/PUT /dues_residents/1.json
  def update
    respond_to do |format|
      if @dues_resident.update(dues_resident_params)
        format.html { redirect_to @dues_resident, notice: 'Dues resident was successfully updated.' }
        format.json { render :show, status: :ok, location: @dues_resident }
      else
        format.html { render :edit }
        format.json { render json: @dues_resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dues_residents/1
  # DELETE /dues_residents/1.json
  def destroy
    @dues_resident.destroy
    respond_to do |format|
      format.html { redirect_to dues_residents_url, notice: 'Dues resident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dues_resident
      @dues_resident = DuesResident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dues_resident_params
      params.require(:dues_resident).permit(:resident_id, :type, :year, :for_month, :for_week, :for_date, :amount, :created_at, :updated_at)
    end
end
