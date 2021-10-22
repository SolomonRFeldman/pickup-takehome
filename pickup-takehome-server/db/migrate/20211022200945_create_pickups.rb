class CreatePickups < ActiveRecord::Migration[6.1]
  def change
    create_enum :status, %w[complete failed pending]
    create_table :pickups do |t|
      t.references :address, foreign_key: true, null: false
      t.date :date, null: false
      t.enum :status, enum_name: :status, null: false
      t.timestamps
    end
  end
end
