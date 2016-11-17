class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :title
      t.text :content
      t.string :family

      t.timestamps null: false
    end
  end
end
