class MealplanMealsController < ApplicationController
  before_action :set_mealplan_meal, only: [:show, :edit, :update, :destroy]

  # GET /mealplan_meals
  # GET /mealplan_meals.json
  def index
    @mealplan_meals = MealplanMeal.all
  end

  # GET /mealplan_meals/1
  # GET /mealplan_meals/1.json
  def show
  end

  # GET /mealplan_meals/new
  def new
    @mealplan_meal = MealplanMeal.new
  end

  # GET /mealplan_meals/1/edit
  def edit
  end

  # POST /mealplan_meals
  # POST /mealplan_meals.json
  def create
    @mealplan_meal = MealplanMeal.new(mealplan_meal_params)

    respond_to do |format|
      if @mealplan_meal.save
        format.html { redirect_to @mealplan_meal, notice: 'Mealplan meal was successfully created.' }
        format.json { render :show, status: :created, location: @mealplan_meal }
      else
        format.html { render :new }
        format.json { render json: @mealplan_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mealplan_meals/1
  # PATCH/PUT /mealplan_meals/1.json
  def update
    respond_to do |format|
      if @mealplan_meal.update(mealplan_meal_params)
        format.html { redirect_to @mealplan_meal, notice: 'Mealplan meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @mealplan_meal }
      else
        format.html { render :edit }
        format.json { render json: @mealplan_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mealplan_meals/1
  # DELETE /mealplan_meals/1.json
  def destroy
    @mealplan_meal.destroy
    respond_to do |format|
      format.html { redirect_to mealplan_meals_url, notice: 'Mealplan meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mealplan_meal
      @mealplan_meal = MealplanMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mealplan_meal_params
      params.require(:mealplan_meal).permit(:meal, :mealplan_id, :meal_id)
    end
end
