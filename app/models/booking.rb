# == Schema Information
#
# Table name: bookings
#
#  id           :bigint(8)        not null, primary key
#  timeIn       :time
#  timeOut      :time
#  amount       :float
#  amenities_id :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  payment      :boolean
#

class Booking < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :amenity, :optional => true
end
