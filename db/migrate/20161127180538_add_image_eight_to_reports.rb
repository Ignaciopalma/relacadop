class AddImageEightToReports < ActiveRecord::Migration
  def change
    add_column :reports, :image_eight, :string
  end
end
