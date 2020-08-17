class Booking < ApplicationRecord
  belongs_to :chalet

  validates :start_date, :end_date, presence: true
end
