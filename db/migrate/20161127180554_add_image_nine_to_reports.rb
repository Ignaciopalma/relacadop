class AddImageNineToReports < ActiveRecord::Migration
  def change
    add_column :reports, :image_nine, :string
  end
end
