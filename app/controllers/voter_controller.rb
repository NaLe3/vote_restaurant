class VoterController < ApplicationController

  def create
    @voter = Voter.create(
      restaurant_id: params[:restaurant_id]
    )
  end

end
