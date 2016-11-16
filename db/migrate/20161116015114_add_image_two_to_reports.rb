class AddImageTwoToReports < ActiveRecord::Migration
  def change
  	add_column :reports, :image_two, :string
  end
end
