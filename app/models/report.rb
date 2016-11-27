class Report < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	mount_uploader :image_two, ImageTwoUploader
	mount_uploader :image_three, ImageThreeUploader
	mount_uploader :image_four, ImageThreeUploader
	mount_uploader :image_five, ImageThreeUploader
	mount_uploader :image_six, ImageThreeUploader
	mount_uploader :image_seven, ImageThreeUploader
	mount_uploader :image_eight, ImageThreeUploader
	mount_uploader :image_nine, ImageThreeUploader
end
