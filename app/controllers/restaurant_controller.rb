class RestaurantController < ApplicationController

  def create
    @restaurant = Restaurant.create(
      name:  params[:name],
      address: params[:vicinity],
      rating: params[:rating],
      google_place_id: params[:place_id],
      session_id: params[:session_id]
    )
    redirect_to session_path(params[:session_id])
  end 

end
