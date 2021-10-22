FactoryBot.define do
  factory :valid_pickup, class: Pickup do
    address { create(:valid_address) }
    date { '1999-01-08' }
    status { 'pending' }
  end
end
