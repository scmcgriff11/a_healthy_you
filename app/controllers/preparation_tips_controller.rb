class PreparationTipsController < ApplicationController
  before_action :set_preparation_tip, only: [:show, :edit, :update, :destroy]

  # GET /preparation_tips
  # GET /preparation_tips.json
  def index
    @preparation_tips = PreparationTip.all
  end

  # GET /preparation_tips/1
  # GET /preparation_tips/1.json
  def show
  end

  # GET /preparation_tips/new
  def new
    @preparation_tip = PreparationTip.new
  end

  # GET /preparation_tips/1/edit
  def edit
  end

  # POST /preparation_tips
  # POST /preparation_tips.json
  def create
    @preparation_tip = PreparationTip.new(preparation_tip_params)

    respond_to do |format|
      if @preparation_tip.save
        format.html { redirect_to @preparation_tip, notice: 'Preparation tip was successfully created.' }
        format.json { render :show, status: :created, location: @preparation_tip }
      else
        format.html { render :new }
        format.json { render json: @preparation_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preparation_tips/1
  # PATCH/PUT /preparation_tips/1.json
  def update
    respond_to do |format|
      if @preparation_tip.update(preparation_tip_params)
        format.html { redirect_to @preparation_tip, notice: 'Preparation tip was successfully updated.' }
        format.json { render :show, status: :ok, location: @preparation_tip }
      else
        format.html { render :edit }
        format.json { render json: @preparation_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preparation_tips/1
  # DELETE /preparation_tips/1.json
  def destroy
    @preparation_tip.destroy
    respond_to do |format|
      format.html { redirect_to preparation_tips_url, notice: 'Preparation tip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preparation_tip
      @preparation_tip = PreparationTip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preparation_tip_params
      params.require(:preparation_tip).permit(:name)
    end
end
