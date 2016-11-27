class AddImageSixToReports < ActiveRecord::Migration
  def change
    add_column :reports, :image_six, :string
  end
end
