class AddNameToChurches < ActiveRecord::Migration
  def change
  	add_column :churches, :name, :string
  end
end
