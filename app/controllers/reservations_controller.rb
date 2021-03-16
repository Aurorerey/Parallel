class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @cabinet = Cabinet.find(params[:cabinet_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @cabinet = Cabinet.find(params[:cabinet_id])
    @reservation.cabinet = @cabinet
    @reservation.user = current_user
    if @reservation.save
      redirect_to cabinet_path(@cabinet), notice: "Your reservation is confirm"
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to cabinet_path, notice: 'Cabinet was successfully destroyed.'
  end
end
