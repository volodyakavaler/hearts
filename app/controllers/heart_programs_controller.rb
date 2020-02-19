class HeartProgramsController < ApplicationController
  before_action :set_heart_program, only: [:show, :edit, :update, :destroy]

  # GET /heart_programs
  # GET /heart_programs.json
  def index
    @heart_programs = HeartProgram.all
  end

  # GET /heart_programs/1
  # GET /heart_programs/1.json
  def show
  end

  # GET /heart_programs/new
  def new
    if params[:sick]
      @sick = Sick.all.where(id: params[:sick]).last
      @heart_program = HeartProgram.new(sick_id: params[:sick])
    else
      @heart_program = HeartProgram.new
    end
  end

  # GET /heart_programs/1/edit
  def edit
  end

  # POST /heart_programs
  # POST /heart_programs.json
  def create
    @heart_program = HeartProgram.new(heart_program_params)

    respond_to do |format|
      if @heart_program.save
        @heart_result  = HeartResult.create(sick_id: @heart_program.sick.id,
                                            heart_program_id: @heart_program.id,
                                            device_type: @heart_program.device.type_of_device)
        format.html { redirect_to @heart_program.sick, notice: 'Heart program was successfully created.' }
        format.json { render :show, status: :created, location: @heart_program }
      else
        format.html { render :new }
        format.json { render json: @heart_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heart_programs/1
  # PATCH/PUT /heart_programs/1.json
  def update
    respond_to do |format|
      if @heart_program.update(heart_program_params)
        format.html { redirect_to @heart_program.sick, notice: 'Heart program was successfully updated.' }
        format.json { render :show, status: :ok, location: @heart_program }
      else
        format.html { render :edit }
        format.json { render json: @heart_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heart_programs/1
  # DELETE /heart_programs/1.json
  def destroy
    @heart_program.destroy
    respond_to do |format|
      format.html { redirect_to @heart_program.sick, notice: 'Heart program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heart_program
      @heart_program = HeartProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heart_program_params
      params.require(:heart_program).permit(:sick_id, :device_id)
    end
end
