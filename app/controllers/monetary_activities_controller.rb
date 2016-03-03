class MonetaryActivitiesController < ApplicationController
  before_action :set_monetary_activity, only: [:show, :edit, :update, :destroy]

  # GET /monetary_activities
  # GET /monetary_activities.json
  def index
    @monetary_activities = MonetaryActivity.all
  end

  # GET /monetary_activities/1
  # GET /monetary_activities/1.json
  def show
  end

  # GET /monetary_activities/new
  def new
    @monetary_activity = MonetaryActivity.new
  end

  # GET /monetary_activities/1/edit
  def edit
  end

  # POST /monetary_activities
  # POST /monetary_activities.json
  def create
    @monetary_activity = MonetaryActivity.new(monetary_activity_params)

    respond_to do |format|
      if @monetary_activity.save
        format.html { redirect_to @monetary_activity, notice: 'Monetary activity was successfully created.' }
        format.json { render :show, status: :created, location: @monetary_activity }
      else
        format.html { render :new }
        format.json { render json: @monetary_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monetary_activities/1
  # PATCH/PUT /monetary_activities/1.json
  def update
    respond_to do |format|
      if @monetary_activity.update(monetary_activity_params)
        format.html { redirect_to @monetary_activity, notice: 'Monetary activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @monetary_activity }
      else
        format.html { render :edit }
        format.json { render json: @monetary_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monetary_activities/1
  # DELETE /monetary_activities/1.json
  def destroy
    @monetary_activity.destroy
    respond_to do |format|
      format.html { redirect_to monetary_activities_url, notice: 'Monetary activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monetary_activity
      @monetary_activity = MonetaryActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monetary_activity_params
      params.require(:monetary_activity).permit(:spent_on, :name, :amount)
    end
end
