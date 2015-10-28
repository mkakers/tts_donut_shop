class DoughnutsController < ApplicationController
  before_action :set_doughnut, only: [:show, :edit, :update, :destroy]

def home
end

  # GET /doughnuts
  # GET /doughnuts.json
  def index
    @doughnuts = Doughnut.all
  end

  # GET /doughnuts/1
  # GET /doughnuts/1.json
  def show
  end

  # GET /doughnuts/new
  def new
    @doughnut = Doughnut.new
  end

  # GET /doughnuts/1/edit
  def edit
  end

  # POST /doughnuts
  # POST /doughnuts.json
  def create
    @doughnut = Doughnut.new(doughnut_params)

    respond_to do |format|
      if @doughnut.save
        format.html { redirect_to @doughnut, notice: 'Doughnut was successfully created.' }
        format.json { render :show, status: :created, location: @doughnut }
      else
        format.html { render :new }
        format.json { render json: @doughnut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doughnuts/1
  # PATCH/PUT /doughnuts/1.json
  def update
    respond_to do |format|
      if @doughnut.update(doughnut_params)
        format.html { redirect_to @doughnut, notice: 'Doughnut was successfully updated.' }
        format.json { render :show, status: :ok, location: @doughnut }
      else
        format.html { render :edit }
        format.json { render json: @doughnut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doughnuts/1
  # DELETE /doughnuts/1.json
  def destroy
    @doughnut.destroy
    respond_to do |format|
      format.html { redirect_to doughnuts_url, notice: 'Doughnut was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doughnut
      @doughnut = Doughnut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doughnut_params
      params.require(:doughnut).permit(:name, :dough, :toppings, :cost, :image)
    end
end
