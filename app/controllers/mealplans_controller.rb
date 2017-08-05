class MealplansController < ApplicationController
  before_action :set_mealplan, only: [:show, :edit, :update, :destroy]

  # GET /mealplans
  # GET /mealplans.json
  def index
    @mealplans = Mealplan.all
  end

  # GET /mealplans/1
  # GET /mealplans/1.json
  def show
  end

  # GET /mealplans/new
  def new
    @mealplan = Mealplan.new
  end

  # GET /mealplans/1/edit
  def edit
  end

  # POST /mealplans
  # POST /mealplans.json
  def create
    @mealplan = Mealplan.new(mealplan_params)

    respond_to do |format|
      if @mealplan.save
        format.html { redirect_to @mealplan, notice: 'Mealplan was successfully created.' }
        format.json { render :show, status: :created, location: @mealplan }
      else
        format.html { render :new }
        format.json { render json: @mealplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mealplans/1
  # PATCH/PUT /mealplans/1.json
  def update
    respond_to do |format|
      if @mealplan.update(mealplan_params)
        format.html { redirect_to @mealplan, notice: 'Mealplan was successfully updated.' }
        format.json { render :show, status: :ok, location: @mealplan }
      else
        format.html { render :edit }
        format.json { render json: @mealplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mealplans/1
  # DELETE /mealplans/1.json
  def destroy
    @mealplan.destroy
    respond_to do |format|
      format.html { redirect_to mealplans_url, notice: 'Mealplan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mealplan
      @mealplan = Mealplan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mealplan_params
      params.require(:mealplan).permit(:mealplan_week, :user_id)
    end
end
