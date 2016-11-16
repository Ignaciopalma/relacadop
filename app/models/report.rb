class Report < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	mount_uploader :image_two, ImageTwoUploader
	mount_uploader :image_three, ImageThreeUploader
end
