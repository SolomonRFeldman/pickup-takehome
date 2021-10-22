require 'rails_helper'

RSpec.describe Address, type: :model do
  let(:valid_address) { create(:valid_address) }

  it 'is valid with basic test fields' do
    expect(valid_address).to be_valid
  end

  it 'is invalid with a null street_address' do
    expect(build(:valid_address, street_address: nil)).to_not be_valid
  end
  it 'is invalid with an empty string street_address' do
    expect(build(:valid_address, street_address: '')).to_not be_valid
  end

  it 'is invalid with a null city' do
    expect(build(:valid_address, city: nil)).to_not be_valid
  end
  it 'is invalid with an empty string city' do
    expect(build(:valid_address, city: '')).to_not be_valid
  end

  it 'is invalid with a null state' do
    expect(build(:valid_address, state: nil)).to_not be_valid
  end
  it 'is invalid with an empty string state' do
    expect(build(:valid_address, state: '')).to_not be_valid
  end

  it 'is invalid with a null zip' do
    expect(build(:valid_address, zip: nil)).to_not be_valid
  end
  it 'is invalid with an empty string zip' do
    expect(build(:valid_address, zip: '')).to_not be_valid
  end
end
