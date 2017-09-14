class SushisController < ApplicationController
  before_action :set_sushi, only: [:show, :update, :edit, :destroy]

  def index
    @sushis = current_user.sushis
  end

  def show

  end

  def new
    @sushi = current_user.sushis.new
  end

  def create
    @sushi = current_user.sushis.new(sushi_params)
    if @sushi.save
      redirect_to @sushi
    else
      render partial: "form"
    end
  end

  def edit
  end

  def update
    if @sushi.update(sushi_params)
      redirect_to @sushi
    else
      render partial: "form"
    end
  end

  def destroy
    @sushi.destroy
    redirect_to sushis_path
  end

  private
    def sushi_params
      params.require(:sushi).permit(:name, :price, :float)
    end
    def set_sushi
      @sushi = current_user.sushis.find(params[:id])
    end

end
