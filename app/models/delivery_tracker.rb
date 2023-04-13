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
# Indexes
#
#  index_delivery_trackers_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class DeliveryTracker < ApplicationRecord
  validates(:arrival, { :presence => true })
  validates(:user_id, { :presence => true })

  def days_until_expected_arrival
    (Date.today - arrival).to_i
  end
end
