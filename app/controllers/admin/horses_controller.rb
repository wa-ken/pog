class Admin::HorsesController < ApplicationController

  before_action :authenticate_admin!
  before_action :set_horse, only: [:show, :edit, :update, :destroy]

  def index
    @horses = Horse.order('reward2 DESC').page params[:page]
  end

  # GET /horses/1.json
  def show
  end

  # GET /horses/new
  def new
    @horse = Horse.new
  end

  # GET /horses/1/edit
  def edit
  end

  # POST /horses
  # POST /horses.json
  def create
    @horse = Horse.new(horse_params)

    respond_to do |format|
      if @horse.save
        format.html { redirect_to @horse, notice: 'Horse was successfully created.' }
        format.json { render :show, status: :created, location: @horse }
      else
        format.html { render :new }
        format.json { render json: @horse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horses/1
  # PATCH/PUT /horses/1.json
  def update
    respond_to do |format|
      if @horse.update(horse_params)
        format.html { redirect_to @horse, notice: 'Horse was successfully updated.' }
        format.json { render :show, status: :ok, location: @horse }
      else
        format.html { render :edit }
        format.json { render json: @horse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horses/1
  # DELETE /horses/1.json
  def destroy
    @horse.destroy
    respond_to do |format|
      format.html { redirect_to horses_url, notice: 'Horse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upload
  end

  def update_horses_data
    Horse.upload(params[:filename])
    redirect_to root_path
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horse
      @horse = Horse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horse_params
      params.require(:horse).permit(:name, :gender, :father, :mother, :reward, :owner, :stable, :number, :avatar)
    end
end
