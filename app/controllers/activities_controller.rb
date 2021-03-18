class ActivitiesController < ApplicationController
  def index
    @body_class = 'activities'
    @activities = Activity.all
  end

  def show
    @body_class = 'activities'
    @activities = Activity.find(params[:id])
  end
end
