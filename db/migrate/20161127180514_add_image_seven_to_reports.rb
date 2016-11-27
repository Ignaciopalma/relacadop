class AddImageSevenToReports < ActiveRecord::Migration
  def change
    add_column :reports, :image_seven, :string
  end
end
