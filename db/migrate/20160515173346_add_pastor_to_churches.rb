class AddPastorToChurches < ActiveRecord::Migration
  def change
  	add_column :churches, :pastor, :string
  end
end
