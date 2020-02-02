class SicksController < ApplicationController
  before_action :set_sick, only: [:show, :edit, :update, :destroy]

  def search
    if params.has_key?('search')
      @sicks = Sick.search(params['search'])
    else
      @sicks = []
    end
    params['search'] ||= {}
  end

  # GET /sicks
  # GET /sicks.json
  def index
    @sicks = Sick.all
  end

  # GET /sicks/1
  # GET /sicks/1.json
  def show
  end

  # GET /sicks/new
  def new
    @sick = Sick.new
    # @sick.lifeanamnese.build
  end

  # GET /sicks/1/edit
  def edit
  end

  # POST /sicks
  # POST /sicks.json
  def create
    @sick = Sick.new(sick_params)

    respond_to do |format|
      if @sick.save
        format.html { redirect_to @sick, notice: 'Sick was successfully created.' }
        format.json { render :show, status: :created, location: @sick }
      else
        format.html { render :new }
        format.json { render json: @sick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sicks/1
  # PATCH/PUT /sicks/1.json
  def update
    respond_to do |format|
      if @sick.update(sick_params)
        format.html { redirect_to @sick, notice: 'Sick was successfully updated.' }
        format.json { render :show, status: :ok, location: @sick }
      else
        format.html { render :edit }
        format.json { render json: @sick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sicks/1
  # DELETE /sicks/1.json
  def destroy
    @sick.destroy
    respond_to do |format|
      format.html { redirect_to sicks_url, notice: 'Sick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sick
      @sick = Sick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def sick_params
    #   params.require(:sick).permit(:first_name, :last_name, :patronymic, :date_of_birth,
    #     :address, :phone, :policy, :passport, :sex, lifeanamnese_attributes: [:_destroy, :marital_status, :children,
    #       :smoking, :alcohol_consumption, :drug_use, :job, :nutrition, :living_conditions, :past_illnesses, :id])
    # end
    def sick_params
      params.require(:sick).permit(:first_name, :last_name, :patronymic, :date_of_birth,
        :address, :phone, :policy, :passport, :sex, :lifeanamnese_id)
    end
end

#
