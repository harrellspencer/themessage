class AddFileToSermons < ActiveRecord::Migration
  def change
  	add_column :sermons, :file, :string
  end
end
