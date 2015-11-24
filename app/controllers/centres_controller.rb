class CentresController < ApplicationController

  def index
    @centres = Centre.all
  end

  def show
  end

  def new
    @centre = Centre.new
  end

  def edit
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
    respond_to do |format|
      if @centre.update(centre_params)
        format.html { redirect_to @centre, notice: 'Centre was successfully updated.' }
        format.json { render :show, status: :ok, location: @centre }
      else
        format.html { render :edit }
        format.json { render json: @centre.errors, status: :unprocessable_entity }
      end
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
      params[:centre]
    end
end
