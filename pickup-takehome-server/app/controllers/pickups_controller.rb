class PickupsController < ApplicationController
  def create
    pickup = Pickup.create(**pickup_params.except(:address), address: Address.new(pickup_params['address']))
    render json: pickup, include: :address
  end

  private

  def pickup_params
    params.require(:pickup).permit(:date, :status, address: %I[street_address street_address_line2 city state zip])
  end
end
