class CabinetsController < ApplicationController
  def index
    @cabinets = Cabinet.all
  end

  def new
    @cabinet = Cabinet.new
  end

  def create
    @cabinet = Cabinet.new(cabinet_params)
    if @cabinet.save
      redirect_to @cabinet, notice: 'Cabinet was successfully created.'
    else
      render :new
    end
  end

  def show
    @cabinet = Cabinet.find(params[:id])
    @reservation = Reservation.new
  end

  def destroy
    @cabinet = Cabinet.find(params[:id])
    @cabinet.destroy
    redirect_to cabinet_path, notice: 'Cabinet was successfully destroyed.'
  end

  def update
    if @cabinet.update(cabinet_params)
      redirect_to @cabinet, notice: 'Cabinet was successfully updated.'
    else
      render :edit
    end
  end

  private

  def cabinet_params
    params.require(:cabinet).permit(:name, :telephone, :cp_cabinet, :adresse_cabinet, :email, :certificate, :user_id)
  end
end
