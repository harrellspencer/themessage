class AddParamsToSermons < ActiveRecord::Migration
  def change
  	add_column :sermons, :name, :string
  	add_column :sermons, :about, :text
  	add_column :sermons, :date, :date
  end
end
