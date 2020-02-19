class HeartPointsController < ApplicationController
  before_action :set_heart_point, only: [:show, :edit, :update, :destroy]

  # GET /heart_points
  # GET /heart_points.json
  def index
    @heart_points = HeartPoint.all
  end

  # GET /heart_points/1
  # GET /heart_points/1.json
  def show
  end

  # GET /heart_points/new
  def new
    @heart_point = HeartPoint.new
  end

  # GET /heart_points/1/edit
  def edit
  end

  # POST /heart_points
  # POST /heart_points.json
  def create
    current_device = Device.all.where(id: params["device"]).first
    unless current_device.heart_program.nil?
      # puts current_device.heart_program.sick.id
      # puts current_device.heart_program.heart_result.id
      # puts("\n\n\n\n\n\n\n\n\n\n")
      @heart_point = HeartPoint.new(heart_point_params)
      @heart_point.heart_result_id = current_device.heart_program.heart_result.id

      respond_to do |format|
        if @heart_point.save
          format.html { redirect_to @heart_point, notice: 'Heart point was successfully created.' }
          format.json { render :show, status: :created, location: @heart_point }
        else
          format.html { render :new }
          format.json { render json: @heart_point.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /heart_points/1
  # PATCH/PUT /heart_points/1.json
  def update
    respond_to do |format|
      if @heart_point.update(heart_point_params)
        format.html { redirect_to @heart_point, notice: 'Heart point was successfully updated.' }
        format.json { render :show, status: :ok, location: @heart_point }
      else
        format.html { render :edit }
        format.json { render json: @heart_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heart_points/1
  # DELETE /heart_points/1.json
  def destroy
    @heart_point.destroy
    respond_to do |format|
      format.html { redirect_to heart_points_url, notice: 'Heart point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heart_point
      @heart_point = HeartPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heart_point_params
      params.require(:heart_point).permit(:x, :y, :heart_result_id)
    end
end
