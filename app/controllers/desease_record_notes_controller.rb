class DeseaseRecordNotesController < ApplicationController
  before_action :set_desease_record_note, only: [:show, :edit, :update, :destroy]

  # GET /desease_record_notes
  # GET /desease_record_notes.json
  def index
    @desease_record_notes = DeseaseRecordNote.all
  end

  # GET /desease_record_notes/1
  # GET /desease_record_notes/1.json
  def show
  end

  # GET /desease_record_notes/new
  def new
    if params[:desease_record]
      @desease_record_note = DeseaseRecordNote.new(desease_record_id: params[:desease_record])
    else
      @desease_record_note = DeseaseRecordNote.new
    end
  end

  # GET /desease_record_notes/1/edit
  def edit
  end

  # POST /desease_record_notes
  # POST /desease_record_notes.json
  def create
    @desease_record_note = DeseaseRecordNote.new(desease_record_note_params)

    respond_to do |format|
      if @desease_record_note.save
        format.html { redirect_to @desease_record_note.desease_record, notice: 'Desease record note was successfully created.' }
        format.json { render :show, status: :created, location: @desease_record_note }
      else
        format.html { render :new }
        format.json { render json: @desease_record_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desease_record_notes/1
  # PATCH/PUT /desease_record_notes/1.json
  def update
    respond_to do |format|
      if @desease_record_note.update(desease_record_note_params)
        format.html { redirect_to @desease_record_note.desease_record, notice: 'Desease record note was successfully updated.' }
        format.json { render :show, status: :ok, location: @desease_record_note }
      else
        format.html { render :edit }
        format.json { render json: @desease_record_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desease_record_notes/1
  # DELETE /desease_record_notes/1.json
  def destroy
    @desease_record_note.destroy
    respond_to do |format|
      format.html { redirect_to @desease_record_note.desease_record, notice: 'Desease record note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desease_record_note
      @desease_record_note = DeseaseRecordNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desease_record_note_params
      params.require(:desease_record_note).permit(:record_date, :dynamics, :etc, :destination, :desease_record_id)
    end
end
