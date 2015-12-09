class CentresController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin!
  before_action :authenticate_center!, only: [:show, :edit, :update]
  before_action :authenticate_rider!

  def index
    @centres = Centre.all
  end

  def show

    @centre = Centre.find(params[:id])
    @user = User.find(params[:id])
  end

  def new
    @centre = Centre.new
  end

  def edit
    @centre = Centre.find(params[:id])
    @user = User.find(params[:id])
  end

  def create
    @centre = Centre.new(centre_params)

    respond_to do |format|
      if @centre.save
        format.html { redirect_to @centre, notice: 'Centre was successfully created.' }
        format.json { render :show, status: :created, location: @centre }
      else
        format.html { render :new }
        format.json { render json: @centre.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @centre = Centre.find(params[:id])
    if @centre.update(centre_params)
      redirect_to centre_path(@centre.id)
    else
    render :edit
    end
  end

  def destroy
    @centre.destroy
    respond_to do |format|
      format.html { redirect_to centres_url, notice: 'Centre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_centre
      @centre = Centre.find(params[:id])
    end

    def centre_params
      # params[:centre]
      params.require(:centre).permit(:name, :ffe, :siret)
    end
 
end

