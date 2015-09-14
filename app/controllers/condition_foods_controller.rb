class ConditionFoodsController < ApplicationController
  before_action :set_condition_food, only: [:show, :edit, :update, :destroy]

  # GET /condition_foods
  # GET /condition_foods.json
  def index
    @condition_foods = ConditionFood.all
  end

  # GET /condition_foods/1
  # GET /condition_foods/1.json
  def show
  end

  # GET /condition_foods/new
  def new
    @condition_food = ConditionFood.new
  end

  # GET /condition_foods/1/edit
  def edit
  end

  # POST /condition_foods
  # POST /condition_foods.json
  def create
    @condition_food = ConditionFood.new(condition_food_params)

    respond_to do |format|
      if @condition_food.save
        format.html { redirect_to @condition_food, notice: 'Condition food was successfully created.' }
        format.json { render :show, status: :created, location: @condition_food }
      else
        format.html { render :new }
        format.json { render json: @condition_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condition_foods/1
  # PATCH/PUT /condition_foods/1.json
  def update
    respond_to do |format|
      if @condition_food.update(condition_food_params)
        format.html { redirect_to @condition_food, notice: 'Condition food was successfully updated.' }
        format.json { render :show, status: :ok, location: @condition_food }
      else
        format.html { render :edit }
        format.json { render json: @condition_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condition_foods/1
  # DELETE /condition_foods/1.json
  def destroy
    @condition_food.destroy
    respond_to do |format|
      format.html { redirect_to condition_foods_url, notice: 'Condition food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition_food
      @condition_food = ConditionFood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condition_food_params
      params.require(:condition_food).permit(:name)
    end
end
