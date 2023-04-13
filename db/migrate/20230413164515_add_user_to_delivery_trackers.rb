class AddUserToDeliveryTrackers < ActiveRecord::Migration[6.0]
  def change
    add_reference :delivery_trackers, :user, foreign_key: true
  end
end
