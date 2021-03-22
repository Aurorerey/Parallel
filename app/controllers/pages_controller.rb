class PagesController < ApplicationController
  def home
  end

  def profil
    @user = current_user
    @cabinets = Cabinet.all
    @reservations = current_user.reservations
  end
end
