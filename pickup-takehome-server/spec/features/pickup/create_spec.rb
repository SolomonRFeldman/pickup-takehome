require 'rails_helper'

describe 'Applicaton Features', :type => :feature do
  let(:valid_pickup_params) do
    {
      address: {
        street_address: '00-00 00th Street',
        street_address_line2: 'APT 0',
        city: 'Fakecity',
        state: 'Fakestate',
        zip: '00000'
      },
      date: '1999-01-08',
      status: 'pending'
    }
  end

  it 'does not get a routing error when create is posted to' do
    expect { page.driver.submit :post, '/api/pickups', { pickup: valid_pickup_param } }.not_to raise_error(ActionController::RoutingError)
  end

  it 'defines the create action' do
    expect { page.driver.submit :post, pickups_path, { pickup: valid_pickup_params } }.not_to raise_error(AbstractController::ActionNotFound)
  end

  context 'when a pickup posts to pickup_path with valid params' do
    before do
      page.driver.submit :post, pickups_path, { pickup: valid_pickup_params }
    end

    it 'returns 200' do
      expect(page.status_code).to eq(200)
    end

    it 'returns json with the pickup and address attributes' do
      resp = JSON.parse(page.body)
      expect(resp['date']).to eq(valid_pickup_params[:date])
      expect(resp['status']).to eq(valid_pickup_params[:status])
      expect(resp['address']['street_address']).to eq(valid_pickup_params[:address][:street_address])
      expect(resp['address']['street_address_line2']).to eq(valid_pickup_params[:address][:street_address_line2])
      expect(resp['address']['city']).to eq(valid_pickup_params[:address][:city])
      expect(resp['address']['state']).to eq(valid_pickup_params[:address][:state])
      expect(resp['address']['zip']).to eq(valid_pickup_params[:address][:zip])
    end
  end
end
