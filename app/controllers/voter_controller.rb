class VoterController < ApplicationController

  def create
    @voter = Voter.create(
      restaurant_id: params[:restaurant_id]
    )
    redirect_to restaurant_index_path
  end

end
