# == Schema Information
#
# Table name: delivery_trackers
#
#  id          :integer          not null, primary key
#  arrival     :date
#  description :string
#  details     :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class DeliveryTracker < ApplicationRecord
end
