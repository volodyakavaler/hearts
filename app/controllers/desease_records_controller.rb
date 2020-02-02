class DeseaseRecordsController < ApplicationController
  before_action :set_desease_record, only: [:show, :edit, :update, :destroy]

  # GET /desease_records
  # GET /desease_records.json
  def index
    @desease_records = DeseaseRecord.all
  end

  # GET /desease_records/1
  # GET /desease_records/1.json
  def show
  end

  # GET /desease_records/new

  def new
    if params[:sick]
      @desease_record = DeseaseRecord.new(sick_id: params[:sick])
    else
      @desease_record = DeseaseRecord.new
    end
  end
  # def new
  #   @desease_record = DeseaseRecord.new
  # end

  # GET /desease_records/1/edit
  def edit
  end

  # POST /desease_records
  # POST /desease_records.json
  def create
    @desease_record = DeseaseRecord.new(desease_record_params)

    respond_to do |format|
      if @desease_record.save
        format.html { redirect_to @desease_record.sick, notice: 'Desease record was successfully created.' }
        format.json { render :show, status: :created, location: @desease_record }
      else
        format.html { render :new }
        format.json { render json: @desease_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desease_records/1
  # PATCH/PUT /desease_records/1.json
  def update
    respond_to do |format|
      if @desease_record.update(desease_record_params)
        format.html { redirect_to @desease_record, notice: 'Desease record was successfully updated.' }
        format.json { render :show, status: :ok, location: @desease_record }
      else
        format.html { render :edit }
        format.json { render json: @desease_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desease_records/1
  # DELETE /desease_records/1.json
  def destroy
    @desease_record.destroy
    respond_to do |format|
      format.html { redirect_to desease_records_url, notice: 'Desease record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desease_record
      @desease_record = DeseaseRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desease_record_params
      params.require(:desease_record).permit(:start_date, :finish_date, :result, :disease_classification, :description, :sick_id)
    end
end
