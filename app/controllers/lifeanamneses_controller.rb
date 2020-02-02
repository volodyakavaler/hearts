class LifeanamnesesController < ApplicationController
  before_action :set_lifeanamnese, only: [:show, :edit, :update, :destroy]

  # GET /lifeanamneses
  # GET /lifeanamneses.json
  def index
    @lifeanamneses = Lifeanamnese.all
  end

  # GET /lifeanamneses/1
  # GET /lifeanamneses/1.json
  def show
  end

  # GET /lifeanamneses/new
  def new
    if params[:sick]
      @lifeanamnese = Lifeanamnese.new(sick_id: params[:sick])
    else
      @lifeanamnese = Lifeanamnese.new
    end
  end
  # def new
  #   @lifeanamnese = Lifeanamnese.new
  # end

  # GET /lifeanamneses/1/edit
  def edit
  end

  # POST /lifeanamneses
  # POST /lifeanamneses.json
  def create
    @lifeanamnese = Lifeanamnese.new(lifeanamnese_params)

    respond_to do |format|
      if @lifeanamnese.save
        format.html { redirect_to @lifeanamnese.sick, notice: 'Lifeanamnese was successfully created.' }
        format.json { render :show, status: :created, location: @lifeanamnese }
      else
        format.html { render :new }
        format.json { render json: @lifeanamnese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifeanamneses/1
  # PATCH/PUT /lifeanamneses/1.json
  def update
    respond_to do |format|
      if @lifeanamnese.update(lifeanamnese_params)
        format.html { redirect_to @lifeanamnese.sick, notice: 'Lifeanamnese was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifeanamnese }
      else
        format.html { render :edit }
        format.json { render json: @lifeanamnese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifeanamneses/1
  # DELETE /lifeanamneses/1.json
  def destroy
    @lifeanamnese.destroy
    respond_to do |format|
      format.html { redirect_to @lifeanamnese.sick, notice: 'Lifeanamnese was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifeanamnese
      @lifeanamnese = Lifeanamnese.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifeanamnese_params
      params.require(:lifeanamnese).permit(:marital_status, :children, :smoking, :alcohol_consumption, :drug_use, :job, :nutrition, :living_conditions, :past_illnesses, :sick_id)
    end
end
