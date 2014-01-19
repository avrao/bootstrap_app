class RackInstallationsController < ApplicationController
  before_action :set_rack_installation, only: [:show, :edit, :update, :destroy]

  # GET /rack_installations
  # GET /rack_installations.json
  def index
    @rack_installations = RackInstallation.all
  end

  # GET /rack_installations/1
  # GET /rack_installations/1.json
  def show
  end

  # GET /rack_installations/new
  def new
    @rack_installation = RackInstallation.new
  end

  # GET /rack_installations/1/edit
  def edit
  end

  # POST /rack_installations
  # POST /rack_installations.json
  def create
    @rack_installation = RackInstallation.new(rack_installation_params)

    respond_to do |format|
      if @rack_installation.save
        format.html { redirect_to @rack_installation, notice: 'Rack installation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rack_installation }
      else
        format.html { render action: 'new' }
        format.json { render json: @rack_installation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rack_installations/1
  # PATCH/PUT /rack_installations/1.json
  def update
    respond_to do |format|
      if @rack_installation.update(rack_installation_params)
        format.html { redirect_to @rack_installation, notice: 'Rack installation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rack_installation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rack_installations/1
  # DELETE /rack_installations/1.json
  def destroy
    @rack_installation.destroy
    respond_to do |format|
      format.html { redirect_to rack_installations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rack_installation
      @rack_installation = RackInstallation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rack_installation_params
      params.require(:rack_installation).permit(:title, :title_link, :owned_by, :purpose, :added_by, :added_on, :outdated)
    end
end
