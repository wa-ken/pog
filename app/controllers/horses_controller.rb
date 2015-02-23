class HorsesController < ApplicationController
  before_action :set_horse, only: [:show]
  require 'csv'
  # GET /horses
  # GET /horses.json
  def index
    @horses = Horse.order('reward2 DESC').page params[:page]
  end

  # GET /horses/1
  # GET /horses/1.json
  def show
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
