class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validate :picture_size
  validates :name, presence: true
  validates :picture, presence: true
	private

	def picture_size
		if picture.size > 10.megabytes
			errors.add(:picture, "should be less than 10MB")
		end
	end

end
