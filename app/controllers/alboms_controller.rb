class AlbomsController < ApplicationController
  before_action :set_albom, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :show]
  # GET /alboms
  # GET /alboms.json
  def index
    @alboms = Albom.all
  end

  # GET /alboms/1
  # GET /alboms/1.json
  def show
  end

  # GET /alboms/new
  def new
    @albom = Albom.new
  end

  # GET /alboms/1/edit
  def edit
  end

  # POST /alboms
  # POST /alboms.json
  def create
    @albom = Albom.new(albom_params)

    respond_to do |format|
      if @albom.save
        format.html { redirect_to @albom, notice: 'Albom was successfully created.' }
        format.json { render :show, status: :created, location: @albom }
      else
        format.html { render :new }
        format.json { render json: @albom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alboms/1
  # PATCH/PUT /alboms/1.json
  def update
    respond_to do |format|
      if @albom.update(albom_params)
        format.html { redirect_to @albom, notice: 'Albom was successfully updated.' }
        format.json { render :show, status: :ok, location: @albom }
      else
        format.html { render :edit }
        format.json { render json: @albom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alboms/1
  # DELETE /alboms/1.json
  def destroy
    @albom.destroy
    respond_to do |format|
      format.html { redirect_to alboms_url, notice: 'Albom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albom
      @albom = Albom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def albom_params
      params.require(:albom).permit(:title, :when)
    end
end
