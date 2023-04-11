# == Schema Information
#
# Table name: delivery_trackers
#
#  id          :integer          not null, primary key
#  arrival     :date
#  description :text
#  details     :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class DeliveryTracker < ApplicationRecord
end
