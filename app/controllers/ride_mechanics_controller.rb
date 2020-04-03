class RideMechanicsController < ApplicationController
  def create
    mechanic = Mechanic.find(params[:mechanic_id])
    mechanic.add_ride(params[:ride_id])
    redirect_to "/mechanics/#{mechanic.id}"
  end
end
