class CreateNodeConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :node_connections do |t|
      t.integer :city_id
      t.integer :travel_node_id
      t.integer :travel_minutes

      t.timestamps
    end

    add_money :node_connections, :price
  end
end
