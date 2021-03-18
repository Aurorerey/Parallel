class CabinetsController < ApplicationController
  def index
    @body_class = 'health'
    @cabinets = Cabinet.all

    @markers = @cabinets.geocoded.map do |cabinet|
      {
        lat: cabinet.latitude,
        lng: cabinet.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { cabinet: cabinet })
      }
    end
  end

  def new
    @body_class = 'health'
    @cabinet = Cabinet.new
  end

  def create
    @body_class = 'health'
    @cabinet = Cabinet.new(cabinet_params)
    if @cabinet.save
      redirect_to @cabinet, notice: 'Cabinet was successfully created.'
    else
      render :new
    end
  end

  def show
    @body_class = 'health'
    @cabinet = Cabinet.find(params[:id])
    @reservation = Reservation.new
    @cabinets = Cabinet.all
    @markers = @cabinets.geocoded.map do |cabinet|
      {
        lat: cabinet.latitude,
        lng: cabinet.longitude
      }
    end
  end

  def destroy
    @body_class = 'health'
    @cabinet = Cabinet.find(params[:id])
    @cabinet.destroy
    redirect_to cabinet_path, notice: 'Cabinet was successfully destroyed.'
  end

  def update
    @body_class = 'health'
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
