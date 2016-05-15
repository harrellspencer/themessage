class AddLocationToChurches < ActiveRecord::Migration
  def change
  	add_column :churches, :location, :string
  end
end
