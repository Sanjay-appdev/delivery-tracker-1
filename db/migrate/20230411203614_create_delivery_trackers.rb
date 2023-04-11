class CreateDeliveryTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_trackers do |t|
      t.text :description
      t.date :arrival
      t.text :details
      t.string :status

      t.timestamps
    end
  end
end
