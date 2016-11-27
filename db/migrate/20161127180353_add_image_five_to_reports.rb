class AddImageFiveToReports < ActiveRecord::Migration
  def change
    add_column :reports, :image_five, :string
  end
end
