class CreateDeliveryTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_trackers do |t|
      t.string :description
      t.date :arrival
      t.string :details
      t.string :status

      t.timestamps
    end
  end
end
