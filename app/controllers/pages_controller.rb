class PagesController < ApplicationController
  def home
  end

  def profil
    @user = current_user
    @cabinets = Cabinet.all
    @reservations = current_user.reservations
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to cabinet_path, notice: 'Cabinet was successfully destroyed.'
  end
end
