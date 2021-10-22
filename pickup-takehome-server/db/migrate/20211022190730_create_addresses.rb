class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.text :street_address, null: false
      t.text :street_address_line_two, default: ""
      t.text :city, null: false
      t.text :state, null: false
      t.text :zip, null: false
      t.timestamps
    end
  end
end
