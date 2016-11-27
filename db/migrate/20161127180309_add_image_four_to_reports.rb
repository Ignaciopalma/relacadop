class AddImageFourToReports < ActiveRecord::Migration
  def change
    add_column :reports, :image_four, :string
  end
end
