class AddImageThreeToReports < ActiveRecord::Migration
  def change
  	add_column :reports, :image_three, :string
  end
end
