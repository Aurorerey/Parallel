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
    if @reservation.save!
      redirect_to cabinet_path(@cabinet), notice: "Votre réservation est confirmée"
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to pro_path, notice: 'Votre réservation a bien été supprimé'
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_time, :end_time)
  end
end
