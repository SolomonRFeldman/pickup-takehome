FactoryBot.define do
  factory :valid_address, class: Address do
    street_address { '00-00 00th Street' }
    street_address_line2 { 'APT 0' }
    city { 'Fakecity' }
    state { 'Fakestate' }
    zip { '00000' }
  end
end
