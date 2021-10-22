require 'rails_helper'

RSpec.describe Pickup, type: :model do
  let(:valid_pickup) { create(:valid_pickup) }

  it 'is valid with basic test fields' do
    expect(valid_pickup).to be_valid
  end

  it 'has an address' do
    expect(valid_pickup.address).to be_a(Address)
  end

  it 'is invalid without an address' do
    expect(build(:valid_pickup, address: nil)).to_not be_valid
  end

  it 'is invalid with a null date' do
    expect(build(:valid_pickup, date: nil)).to_not be_valid
  end
  it 'is invalid with a blank date' do
    expect(build(:valid_pickup, date: '')).to_not be_valid
  end

  it 'is invalid with a null status' do
    expect(build(:valid_pickup, status: nil)).to_not be_valid
  end
  it 'is invalid with a blank status' do
    expect(build(:valid_pickup, status: '')).to_not be_valid
  end

  it 'is invalid with status set to a value not included in the enum def' do
    expect { build(:valid_pickup, status: 'bad-enum') }.to raise_error(ArgumentError)
  end

  it 'is valid with status set to "pending"' do
    expect(build(:valid_pickup, status: 'pending')).to be_valid
  end

  it 'is valid with status set to "complete"' do
    expect(build(:valid_pickup, status: 'complete')).to be_valid
  end

  it 'is valid with status set to "failed"' do
    expect(build(:valid_pickup, status: 'failed')).to be_valid
  end
end
