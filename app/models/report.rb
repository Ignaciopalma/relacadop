class Report < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	mount_uploader :image_two, ImageTwoUploader
	mount_uploader :image_three, ImageThreeUploader
	mount_uploader :image_four, ImageFourUploader
	mount_uploader :image_five, ImageFiveUploader
	mount_uploader :image_six, ImageSixUploader
	mount_uploader :image_seven, ImageSevenUploader
	mount_uploader :image_eight, ImageEightUploader
	mount_uploader :image_nine, ImageNineUploader
end
