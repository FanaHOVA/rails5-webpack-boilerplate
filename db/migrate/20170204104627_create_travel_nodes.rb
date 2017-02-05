class CreateTravelNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :travel_nodes do |t|
      t.string :name
      t.integer :node_kind_id
      t.integer :city_id

      t.timestamps
    end
  end
end
