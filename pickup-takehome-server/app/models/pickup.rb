class Pickup < ApplicationRecord
  belongs_to :address

  validates :date, presence: true
  validates :status, presence: true

  enum status: { complete: 'complete', failed: 'failed', pending: 'pending' }
end
