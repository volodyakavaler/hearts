class HeartResultsController < ApplicationController
  before_action :set_heart_result, only: [:show, :edit, :update, :destroy]

  # GET /heart_results
  # GET /heart_results.json
  def index
    @heart_results = HeartResult.all
  end

  # GET /heart_results/1
  # GET /heart_results/1.json
  def show
    @heart_result_xs = @heart_result.heart_points.map{|i| i.x}
    @heart_result_ys = @heart_result.heart_points.map{|i| i.y}

    puts("\n"*10)
    puts @heart_result_xs
    puts("\n"*10)
  end

  # GET /heart_results/new
  def new
    @heart_result = HeartResult.new
  end

  # GET /heart_results/1/edit
  def edit
  end

  # POST /heart_results
  # POST /heart_results.json
  def create
    @heart_result = HeartResult.new(heart_result_params)

    respond_to do |format|
      if @heart_result.save
        format.html { redirect_to @heart_result, notice: 'Heart result was successfully created.' }
        format.json { render :show, status: :created, location: @heart_result }
      else
        format.html { render :new }
        format.json { render json: @heart_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heart_results/1
  # PATCH/PUT /heart_results/1.json
  def update
    respond_to do |format|
      if @heart_result.update(heart_result_params)
        format.html { redirect_to @heart_result, notice: 'Heart result was successfully updated.' }
        format.json { render :show, status: :ok, location: @heart_result }
      else
        format.html { render :edit }
        format.json { render json: @heart_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heart_results/1
  # DELETE /heart_results/1.json
  def destroy
    @heart_result.destroy
    respond_to do |format|
      format.html { redirect_to @heart_result.sick, notice: 'Heart result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heart_result
      @heart_result = HeartResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heart_result_params
      params.require(:heart_result).permit(:sick_id, :heart_program_id)
    end
end
