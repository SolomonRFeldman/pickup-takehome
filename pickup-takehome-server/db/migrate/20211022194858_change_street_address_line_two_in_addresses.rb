class ChangeStreetAddressLineTwoInAddresses < ActiveRecord::Migration[6.1]
  def change
    rename_column :addresses, :street_address_line_two, :street_address_line2
  end
end
